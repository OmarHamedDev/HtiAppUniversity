import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_action.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_cubit.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/validators/validations.dart';
import '../../../../core/utils/widget/app_text_form_feild.dart';

class RegisterFormFieldWidget extends StatefulWidget {
  const RegisterFormFieldWidget({super.key});

  @override
  State<RegisterFormFieldWidget> createState() =>
      _RegisterFormFieldWidgetState();
}

class _RegisterFormFieldWidgetState extends State<RegisterFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    var registerViewModel = context.read<RegisterCubit>();
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Form(
          key: registerViewModel.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildNameInputField(registerViewModel),
              _buildEmailInputField(registerViewModel),
              _buildStudentIdInputField(registerViewModel),
              _buildPasswordInputField(registerViewModel),
              _buildConfirmPasswordInputField(registerViewModel),
              _buildPhoneInputField(registerViewModel),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmailInputField(RegisterCubit registerViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        Padding(
          padding: _buildPaddingRegister(),
          child: CustomTextFromField(
            height: 20.h,
            width: 343,
            controller: registerViewModel.emailController,
            inputType: TextInputType.emailAddress,
            validator: (value) => Validations.validateEmail(value),
            isObscureText: false,
          ),
        ),
      ],
    );
  }

  Widget _buildStudentIdInputField(RegisterCubit registerViewModel) {
    if (registerViewModel.isAStudent) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Student ID",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          Padding(
            padding: _buildPaddingRegister(),
            child: CustomTextFromField(
              height: 14.h,
              width: 343,
              controller: registerViewModel.studentIdController,
              inputType: TextInputType.number,
              validator: (value) => Validations.validateStudentId(value),
              isObscureText: false,
            ),
          ),
        ],
      );
    } else {
      return SizedBox();
    }
  }

  Widget _buildNameInputField(RegisterCubit registerViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Name ",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        Padding(
          padding: _buildPaddingRegister(),
          child: CustomTextFromField(
            height: 14.h,
            width: 343,
            controller: registerViewModel.nameController,
            inputType: TextInputType.name,
            validator: (value) => Validations.validateName(value),
            isObscureText: false,
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordInputField(RegisterCubit registerViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        Padding(
          padding: _buildPaddingRegister(),
          child: CustomTextFromField(
            height: 20.h,
            width: 343,
            controller: registerViewModel.passwordController,
            validator: (value) =>
                Validations.validatePassword(value, ),
            suffixIcon: IconButton(
                onPressed: () => registerViewModel
                    .doAction(ChangePasswordVisibilityAction()),
                icon: Icon(
                  registerViewModel.isPasswordVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.black,
                )),
            inputType: TextInputType.visiblePassword,
            isObscureText: registerViewModel.isPasswordVisible,
          ),
        ),
      ],
    );
  }

  Widget _buildConfirmPasswordInputField(RegisterCubit registerViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Confirm Password ",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        Padding(
          padding: _buildPaddingRegister(),
          child: CustomTextFromField(
            height: 20.h,
            width: 343,
            inputType: TextInputType.visiblePassword,
            controller: registerViewModel.confirmPasswordController,
            validator: (value) => Validations.validateConfirmPassword(
                value, registerViewModel.passwordController.text),
            suffixIcon: IconButton(
                onPressed: () => registerViewModel
                    .doAction(ChangeConfirmPasswordVisibilityAction()),
                icon: Icon(
                  registerViewModel.isConfirmPasswordVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.black,
                )),
            isObscureText: registerViewModel.isConfirmPasswordVisible,
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneInputField(RegisterCubit registerViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Phone Number ",
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        Padding(
          padding: _buildPaddingRegister(),
          child: CustomTextFromField(
            height: 20.h,
            width: 343,
            controller: registerViewModel.phoneController,
            validator: (value) => Validations.validatePhoneNumber(value),
            inputType: TextInputType.phone,
          ),
        ),
      ],
    );
  }

  EdgeInsets _buildPaddingRegister() {
    if (BlocProvider.of<RegisterCubit>(context).isAStudent) {
      return EdgeInsets.only(top: 5.0.h, bottom: 8.0.h);
    } else {
      return EdgeInsets.only(top: 8.0.h, bottom: 14.0.h);
    }
  }
}
