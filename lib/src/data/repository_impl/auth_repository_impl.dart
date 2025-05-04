import 'package:hti_univerity/core/api/network/common/execute_method.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/data/model/request/change_password_request/change_password_request.dart';
import 'package:hti_univerity/src/data/model/request/forget_password_password_request/forget_password_request.dart';
import 'package:hti_univerity/src/data/model/request/login_request/login_request.dart';
import 'package:hti_univerity/src/data/model/request/register_request/register_request.dart';
import 'package:hti_univerity/src/data/model/request/reset_password_request/reset_password_request.dart';
import 'package:hti_univerity/src/data/model/request/verify_reset_code_request/verify_reset_code_request.dart';
import 'package:hti_univerity/src/domain/entities/app_user_entity.dart';
import 'package:hti_univerity/src/domain/entities/success_auth_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/auth_repository.dart';
import '../data_source/offline_data_source/auth_offline_data_source/auth_offline_data_source.dart';
import '../data_source/remote_data_source/auth_remote_data_source/auth_remote_data_source.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthOfflineDataSource _authOfflineDataSource;
  AuthRepositoryImpl(this._authRemoteDataSource, this._authOfflineDataSource);
  @override
  Future<Result<AppUserEntity>> login({required LoginRequest loginRequest}) {
    return executeMethod<AppUserEntity>(
      callMethod: () async {
        var result = await _authRemoteDataSource.login(loginRequest);
        _authOfflineDataSource.saveToken(token: result.$2);
        _authOfflineDataSource.saveRole(role: result.$1.role);
        _authOfflineDataSource.saveAppUser(appUserEntity: result.$1);
        return result.$1;
      },
    );
  }

  @override
  Future<Result<AppUserEntity>> register(
      {required RegisterRequest registerRequest}) {
    return executeMethod<AppUserEntity>(
      callMethod: () async {
        var result = await _authRemoteDataSource.register(registerRequest);
        _authOfflineDataSource.saveToken(token: result.$2);
        _authOfflineDataSource.saveRole(role: result.$1.role);
        _authOfflineDataSource.saveAppUser(appUserEntity: result.$1);
        return result.$1;
      },
    );
  }

  @override
  Future<Result<bool>> changePassword(
      {required ChangePasswordRequest changePasswordRequest}) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Result<SuccessAuthEntity>> forgetPassword(
      {required ForgetPasswordRequest forgetPasswordRequest}) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<Result<SuccessAuthEntity>> resetPassword(
      {required ResetPasswordRequest resetPasswordRequest}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Result<SuccessAuthEntity>> verifyResetCode(
      {required VerifyResetCodeRequest verifyRestCode}) {
    // TODO: implement verifyResetCode
    throw UnimplementedError();
  }
}
