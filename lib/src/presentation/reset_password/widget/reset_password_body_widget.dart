import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/reset_password/widget/submit_reset_password_widget.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import 'reset_password_form_field_widget.dart';

class ResetPasswordBodyWidget extends StatelessWidget {
  const ResetPasswordBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
             "Create New Password",
              style: AppFonts.font24kBlackWeight500Inter,
            ),
            verticalSpace(16),
            Text(
              textAlign: TextAlign.center,
              "Please enter and confirm your new password.",
              style: AppFonts.font16kGrayWeight400Inter,
            ),
            verticalSpace(32),
            const ResetPasswordFormFieldWidget(),
      
            verticalSpace(40),
            const ContinueResetPasswordButtonWidget(),
          ],
        ),
      ),
    );
  }
}
