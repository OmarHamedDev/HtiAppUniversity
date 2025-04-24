import 'package:flutter/material.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import 'change_password_form_field_widget.dart';

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(18.0),
      child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Change Password",
                style: AppFonts.font24kBlackWeight500Inter,
              ),
              verticalSpace(20),
              ChangePasswordFormFieldWidget(),
            ],
          )),
    );
  }
}
