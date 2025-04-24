import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/login/view_model/login_cubit.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/functions/validators/validations.dart';
import '../../../../core/utils/widget/app_text_form_feild.dart';
import '../view_model/login_action.dart';

class LoginFormFieldWidget extends StatelessWidget {
  const LoginFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var loginViewModel = context.read<LoginCubit>();
    return Form(
      key: loginViewModel.formKey,
      child: Column(crossAxisAlignment:
      CrossAxisAlignment.start, children: [
        Text(
          "Email",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        verticalSpace(12),
        CustomTextFromField(
          height: 20.h,
          width: 343,
          controller: loginViewModel.emailController,
          inputType: TextInputType.emailAddress,
          validator: (value) => Validations.validateEmail(value),
          isObscureText: false,
        ),
        verticalSpace(24),
        Text(
          "Password ",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        verticalSpace(12),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return CustomTextFromField(
              height: 20.h,
              width: 343,
              controller: loginViewModel.passwordController,
              validator: (value) => Validations.validatePassword(value),
              suffixIcon: IconButton(
                  onPressed: () =>
                      loginViewModel.doAction(ChangePasswordVisibilityAction()),
                  icon: Icon(
                    loginViewModel.isPasswordVisible ?
                    Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: Colors.black,
                  )),
              inputType: TextInputType.visiblePassword,
              isObscureText: loginViewModel.isPasswordVisible,
            );
          },
        ),
      ]),
    );
  }


}
