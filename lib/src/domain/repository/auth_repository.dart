import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/data/model/request/register_request/register_request.dart';
import 'package:hti_univerity/src/domain/entities/app_user_entity.dart';

import '../../data/model/request/change_password_request/change_password_request.dart';
import '../../data/model/request/forget_password_password_request/forget_password_request.dart';
import '../../data/model/request/login_request/login_request.dart';
import '../../data/model/request/reset_password_request/reset_password_request.dart';
import '../../data/model/request/verify_reset_code_request/verify_reset_code_request.dart';
import '../entities/success_auth_entity.dart';

abstract class AuthRepository {
  Future<Result<AppUserEntity>> login({required LoginRequest loginRequest});
  Future<Result<AppUserEntity>> register({required RegisterRequest registerRequest});
  Future<Result<bool>> changePassword({required ChangePasswordRequest changePasswordRequest});
  Future<Result<SuccessAuthEntity>>forgetPassword({required ForgetPasswordRequest forgetPasswordRequest});
  Future<Result<SuccessAuthEntity>>resetPassword({required ResetPasswordRequest resetPasswordRequest});
  Future<Result<SuccessAuthEntity>>verifyResetCode({required VerifyResetCodeRequest verifyRestCode});
  Future<Result<bool>>logOut();
}