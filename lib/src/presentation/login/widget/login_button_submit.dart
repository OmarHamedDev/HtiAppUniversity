import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/widget/custom_button_widget.dart';
import '../view_model/login_action.dart';
import '../view_model/login_cubit.dart';

class LoginButtonSubmit extends StatelessWidget {
  const LoginButtonSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    var loginViewModel=context.read<LoginCubit>();
    return  CustomButtonWidget(text: 'Log in',
        onPressed: ()=>_onPressed(loginViewModel));

  }


  void _onPressed(LoginCubit loginViewModel) {
    if (loginViewModel.formKey.currentState!.validate()){
      loginViewModel.doAction(ButtonLoginAction());
    }

  }

}

