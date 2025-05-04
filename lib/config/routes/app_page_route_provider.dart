import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hti_univerity/src/domain/entities/app_user_entity.dart';
import 'package:injectable/injectable.dart';
import '../../core/caching/cache_keys.dart';
import '../../core/caching/secure_storge/secure_storage.dart';
import '../../config/routes/page_route_name.dart';
import '../../src/data/data_source/offline_data_source/model/app_user_local_model/app_user_local_model.dart';
@singleton
class AppConfigProvider extends ChangeNotifier {
  final SecureStorageFunction _secureStorage = SecureStorageFunction();
  Role _role = Role.guest;
  Role get role => _role;
  AppUserEntity  ? appUserEntity;
  String get studentId => appUserEntity?.studentIdentifier ?? "";



  String? _token;
  String? get token => _token;
  Future<void> initializeAppConfig() async {
    await _initializeToken();
    await _initializeRole();
    await _getAppUserEntity();
    notifyListeners();
  }

  Future<void> _initializeRole() async {
    String? roleValue = await _secureStorage.readData(key: CacheKeys.role);
    _setRole(roleValue);
    print("roleValue: $roleValue");
  }

  Future<void>_getAppUserEntity() async {
  var appUserBox = await _initializeAppUserBox();
  var appUserLocalModel = appUserBox.get(CacheKeys.user);
  appUserEntity = AppUserEntity
    (
      id:appUserLocalModel?.id ?? 0,
      email: appUserLocalModel?.email ?? "",
      name: appUserLocalModel?.name ?? "",
      role: "",
      fullName: appUserLocalModel?.fullName ?? "",
    totalUnits: appUserLocalModel?.totalUnits ?? 0,
    studentIdentifier: appUserLocalModel?.studentIdentifier ?? "",
    gpa: appUserLocalModel?.gpa
  );
  }

  Future<Box<AppUserLocalModel>> _initializeAppUserBox() async {
    if (!Hive.isBoxOpen(CacheKeys.user)) {
      return await Hive.openBox<AppUserLocalModel>(CacheKeys.user);
    } else {
      return Hive.box<AppUserLocalModel>(CacheKeys.user);
    }
  }

  void _setRole(String? roleValue) {
    if (roleValue == "Student") {
      _role = Role.student;
    } else if (roleValue == "Faculty") {
      _role = Role.faculty;
    } else if (roleValue == "Admin") {
      _role = Role.admin;
    } else {
      _role = Role.admin;
    }
  }

  Future<void> _initializeToken() async {
    _token = await _secureStorage.readData(key: CacheKeys.token);
  }

  String getInitialPageRouteName() {
    return  _token == null   ? PageRouteName.onBoarding : PageRouteName.section;
  }
}

enum Role { student, faculty, admin, guest }
