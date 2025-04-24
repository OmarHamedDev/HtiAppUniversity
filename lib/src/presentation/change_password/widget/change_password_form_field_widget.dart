import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/functions/validators/validations.dart';
import '../../../../core/utils/widget/app_text_form_feild.dart';
import '../../../../core/utils/widget/custom_button_widget.dart';
import '../view_model/change_password_action.dart';
import '../view_model/change_password_cubit.dart';

class ChangePasswordFormFieldWidget extends StatelessWidget {
  const ChangePasswordFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var changePasswordViewModel=context.read<ChangePasswordCubit>();
    return  Form(
      key: changePasswordViewModel.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Old Password",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(6),
          CustomTextFromField(
            controller: changePasswordViewModel.oldPassword,
            validator: (value) => Validations.validatePassword(value),
            inputType: TextInputType.visiblePassword,
          ),
          verticalSpace(10),
          Text(
            "New Password",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(6),
          CustomTextFromField(
            controller: changePasswordViewModel.password,
            validator: (value) => Validations.validatePassword(value),
            inputType: TextInputType.visiblePassword,
          ),
          verticalSpace(10),
          Text(
            "Confirm Password",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(6),
          CustomTextFromField(
            controller: changePasswordViewModel.rePassword,
            validator: (value) =>
                Validations.validateConfirmPassword(
                    changePasswordViewModel.password.text, value),
            inputType: TextInputType.visiblePassword,
          ),
          verticalSpace(30),
          CustomButtonWidget(
            text: context.localizations.update,
            onPressed: () {
            if(changePasswordViewModel.formKey.currentState!.validate()){
              changePasswordViewModel.doAction(GetCallChangePasswordAction());
            }
            },
          )
        ],
      ),
    );
  }
}
