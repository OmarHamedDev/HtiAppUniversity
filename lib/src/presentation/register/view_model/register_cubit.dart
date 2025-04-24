import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/core/api/network/error/error_handler.dart';
import 'package:hti_univerity/src/data/model/request/register_request/register_request.dart';
import 'package:hti_univerity/src/domain/entities/app_user_entity.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_action.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_case/auth_use_case/register_use_case.dart';

part 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase _registerUseCase;

  RegisterCubit(this._registerUseCase) : super(RegisterInitial());

  String _role = "Student";

  String get role => _role;
  final List<String> _roles = ["Student", "Faculty", "Admin"];

  List get roles => _roles;

  bool _isAStudent = true;

  bool get isAStudent => _isAStudent;

  void changeRole(int nexIndex) {
    String newRole = _roles[nexIndex];
    if (newRole == _role) return;
    _role = newRole;
    _isAStudent = _checkRole(_role);
    emit(UpdateTabState());
  }

  bool _checkRole(String newRole) {
    return (newRole == "Student") ? _isAStudent = true : _isAStudent = false;
  }

  bool _isPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;

  bool get isPasswordVisible => _isPasswordVisible;

  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;

  void _changePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    emit(ChangePasswordVisibilityState());
  }

  void _changeConfirmPasswordVisibility() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    emit(ChangePasswordVisibilityState());
  }


  void _navigateToLoginScreen() {
    emit(NavigateToLoginScreenState());
  }

  void _navigateBaseScreen() {
    emit(NavigateToBaseScreenState());
  }


  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController(
  );
  TextEditingController passwordController = TextEditingController(
  );
  TextEditingController confirmPasswordController = TextEditingController(

  );
  TextEditingController studentIdController = TextEditingController(
  );
  TextEditingController phoneController = TextEditingController(
  );
  TextEditingController nameController = TextEditingController(
  );

  RegisterRequest _initRegisterRequest() {
    return RegisterRequest(
      role: _role,
      email: emailController.text,
      phoneNumber: phoneController.text,
      name: nameController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      studentId: _isAStudent ? studentIdController.text : "",
    );
  }

  Future<void> _register() async {
    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState());
      var result = await _registerUseCase.invoke(
          registerRequest: _initRegisterRequest());
      switch (result) {
        case Success<AppUserEntity>():
          emit(RegisterSuccessState());
        case Failures<AppUserEntity>():
          emit(RegisterErrorState(
              ErrorHandler
                  .formException(result.exception)
                  .errorMassage));
      }
    }
  }

  Future<void> doAction(RegisterAction registerActionView) async {
    switch (registerActionView) {
      case NavigateToLoginScreenAction():
        return _navigateToLoginScreen();
      case NavigateToHomeScreenAction():
        return _navigateBaseScreen();
      case RegisterButtonSubmitAction():
        return await _register();
      case ChangePasswordVisibilityAction():
        return _changePasswordVisibility();
      case ChangeConfirmPasswordVisibilityAction():
        return _changeConfirmPasswordVisibility();
    }
  }


  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    studentIdController.dispose();
    phoneController.dispose();
    nameController.dispose();
  }
}



