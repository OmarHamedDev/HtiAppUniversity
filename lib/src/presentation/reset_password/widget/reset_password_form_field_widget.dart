import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/functions/validators/validations.dart';
import '../../../../core/utils/widget/app_text_form_feild.dart';
import '../view_model/reset_password_cubit.dart';

class ResetPasswordFormFieldWidget extends StatelessWidget {
  const ResetPasswordFormFieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var resetPasswordViewModel = context.read<ResetPasswordCubit>();
    return Form(
      key: resetPasswordViewModel.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(6),
          CustomTextFromField(
            height: 20.h,
            width: 343,
            controller: resetPasswordViewModel.newPassword,
            inputType: TextInputType.text,
            validator: (value) => Validations.validatePassword(value),
            isObscureText: false,
          ),
          verticalSpace(10),
          Text(
            "Confirm Password",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(9),
          CustomTextFromField(
            height: 20.h,
            width: 343,
            controller: resetPasswordViewModel.confirmPassword,
            inputType: TextInputType.text,
            validator: (value) => Validations.validateConfirmPassword(value, resetPasswordViewModel.newPassword.text),
            isObscureText: false,
          ),
        ],
      ),
    );
  }
}
