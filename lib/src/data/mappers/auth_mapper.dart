import 'package:hti_univerity/src/data/model/response/app_user_response_model/app_user_response_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/app_user_entity.dart';

abstract class AuthMapper {
  AppUserEntity mapAppUserModelToEntity(AppUserResponseModel appUserModel);
}

@Injectable(as: AuthMapper)
class AuthMapperImpl implements AuthMapper {
  @override
  AppUserEntity mapAppUserModelToEntity(AppUserResponseModel appUserModel) {
    return AppUserEntity(
      email:appUserModel.user?.email ?? "",
      id:  appUserModel.user?.id ?? "",
      name: appUserModel.user?.name ?? "",
      role:   appUserModel.user?.role ?? "",
    );
  }
}