import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/styles/images/app_images.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import 'continue_forget_password_button_widget.dart';
import 'forget_password_form_field_widget.dart';

class ForgetPasswordBodyWidget extends StatelessWidget {
  const ForgetPasswordBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.localizations.forgetPassword,
              style: AppFonts.font24kBlackWeight500Inter,
            ),
            verticalSpace(24,),
             Image.asset(AppImages.logo,    width: 96.w,
                 height: 100.h,fit: BoxFit.fill,),
            verticalSpace(24,),
            Text(
              textAlign: TextAlign.center,
              "No worries ! Enter your email address below and we will send you a code to reset password .",
              style: AppFonts.font16kGrayWeight400Inter,
            ),
            verticalSpace(24),
            const ForgetPasswordFormFieldWidget(),
            verticalSpace(30),
            const ContinueForgetPasswordButtonWidget(),
          ],
        ),
      ),
    );
  }
}
