import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/login/view_model/login_action.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/widget/prom_pto_widet.dart';
import '../view_model/login_cubit.dart';
import 'forget_password_button_widget.dart';
import 'login_button_submit.dart';
import 'login_form_field_widget.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var loginViewModel=context.read<LoginCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
                top: 80.h,
                left: 16.w,
                right: 16.w,
                bottom: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                  textAlign: TextAlign.center,
                  "Login ",
                  style: AppFonts.font37kBlackWeight700Inter),
            ),
            verticalSpace(49),
            LoginFormFieldWidget(),
            verticalSpace(4),
            ForgetPasswordButtonWidget(),
            verticalSpace(24),
            LoginButtonSubmit(),
            verticalSpace(24),
            PromPtoWidget(
              text: 'Don’t have an account ? ',
              textButton: 'Sign Up',
              onPressed: () =>loginViewModel.doAction(NavigateToRegisterScreenAction()),
            ),
          ],
        ),
      ),
    );
  }
}
