import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../core/caching/cache_keys.dart';
import '../../core/caching/secure_storge/secure_storage.dart';
import '../../config/routes/page_route_name.dart';

@singleton
class AppConfigProvider extends ChangeNotifier {
  final SecureStorageFunction _secureStorage = SecureStorageFunction();

  Role _role = Role.guest;
  Role get role => _role;

  String? _token;
  String? get token => _token;

  Future<void> initializeAppConfig() async {
    await Future.wait([
      _initializeToken(),
      _initializeRole(),
    ]);
    notifyListeners();
  }

  Future<void> _initializeRole() async {
    String? roleValue = await _secureStorage.readData(key: CacheKeys.role);
    _setRole(roleValue);
    _role = Role.faculty;
  }

  void _setRole(String? roleValue) {
    if (roleValue == "Student") {
      _role = Role.student;
    } else if (roleValue == "Faculty") {
      _role = Role.faculty;
    } else if (roleValue == "Admin") {
      _role = Role.admin;
    } else {
      _role = Role.guest;
    }
  }

  Future<void> _initializeToken() async {
    _token = await _secureStorage.readData(key: CacheKeys.token);
  }

  String getInitialPageRouteName() {
    return _token == null ? PageRouteName.onBoarding : PageRouteName.section;

  }
}

enum Role { student, faculty, admin, guest }
