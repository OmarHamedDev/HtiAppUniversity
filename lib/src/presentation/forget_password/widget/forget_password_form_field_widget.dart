import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/functions/validators/validations.dart';
import '../../../../core/utils/widget/app_text_form_feild.dart';
import '../view_model/forget_password_cubit.dart';

class ForgetPasswordFormFieldWidget extends StatelessWidget {
  const ForgetPasswordFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var forgetPasswordViewModel=context.read<ForgetPasswordCubit>();
    return  Form(
      key: forgetPasswordViewModel.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(4),
          CustomTextFromField(
            height: 20.h,
            width: 343,
            controller: forgetPasswordViewModel.emailController,
            inputType: TextInputType.emailAddress,
            validator: (value) => Validations.validateEmail(value),
            isObscureText: false,
          ),
        ],
      ),
    );
  }
}
