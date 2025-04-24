import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/verify_reset_code/widget/pin_code_field_widget.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/widget/prom_pto_widet.dart';

class VerifyResetCodeBody extends StatelessWidget {
  const VerifyResetCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "OTP Verification",
              style: AppFonts.font24kBlackWeight500Inter,
            ),
            verticalSpace(16),
            Text(
              textAlign: TextAlign.center,
              "Enter the verification code we just sent to your email address",
              style: AppFonts.font16kGrayWeight400Inter,
            ),
            verticalSpace(32),
            const PinCodeFieldWidget(),
            verticalSpace(20),
            PromPtoWidget(
              text: context.localizations.didNtReceiveCode,
              textButton: context.localizations.resend,
            )
          ],
        ),
      ),
    );
  }
}
