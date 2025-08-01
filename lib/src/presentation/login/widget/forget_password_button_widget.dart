import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../view_model/login_action.dart';
import '../view_model/login_cubit.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var loginViewModel = context.read<LoginCubit>();
    return Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
          onTap: () =>
              loginViewModel.doAction(NavigateToForgetPasswordScreenAction()),
          child: Text(
            "${context.localizations.forgetPassword}?",
            style: AppFonts.font12kBlackWeight400Inter,
            textAlign: TextAlign.left,
          ),
        ));
  }
}
