import 'package:hti_univerity/src/data/data_source/offline_data_source/model/app_user_local_model/app_user_local_model.dart';
import 'package:hti_univerity/src/data/model/response/app_user_response_model/app_user_response_model.dart';
import 'package:injectable/injectable.dart';


import '../../domain/entities/app_user_entity.dart';

abstract class AuthMapper {
  AppUserEntity mapAppUserModelToEntity(AppUserResponseModel appUserModel);
  AppUserLocalModel mapAppUserEntityToLocalModel(AppUserEntity appUserEntity);
  AppUserEntity mapAppUserLocalModelToEntity(AppUserLocalModel appUserLocalModel);
}

@Injectable(as: AuthMapper)
class AuthMapperImpl implements AuthMapper {
  @override
  AppUserEntity mapAppUserModelToEntity(AppUserResponseModel appUserModel) {
    return AppUserEntity(
      id: appUserModel.userId ?? 0,
      name: appUserModel.studentInfo?.name ?? '',
      email: appUserModel.studentInfo?.name ?? '',
      fullName: appUserModel.fullName ?? '',
      role: appUserModel.role ?? '',
      gpa: appUserModel.studentInfo?.gpa,
      studentIdentifier: appUserModel.studentInfo?.studentIdentifier,
      totalUnits: appUserModel.studentInfo?.totalUnits ?? 0,
    );
  }

  @override
  AppUserLocalModel mapAppUserEntityToLocalModel(AppUserEntity appUserEntity) {
    return AppUserLocalModel(
      id: appUserEntity.id,
      email: appUserEntity.email,
      fullName: appUserEntity.fullName,
      studentIdentifier: appUserEntity.studentIdentifier,
      name: appUserEntity.name,
      gpa: appUserEntity.gpa,
      totalUnits: appUserEntity.totalUnits,
    );
  }

  @override
  AppUserEntity mapAppUserLocalModelToEntity(AppUserLocalModel appUserLocalModel) {
    return AppUserEntity(
      id: appUserLocalModel.id,
      name: appUserLocalModel.name ?? '',
      email: appUserLocalModel.email,
      fullName: appUserLocalModel.fullName,
      role: '',
      gpa: appUserLocalModel.gpa,
      studentIdentifier: appUserLocalModel.studentIdentifier,
      totalUnits: appUserLocalModel.totalUnits ?? 0,
    );
  }
}
