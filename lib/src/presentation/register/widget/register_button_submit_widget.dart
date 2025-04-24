import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_action.dart';

import '../../../../core/utils/widget/custom_button_widget.dart';
import '../view_model/register_cubit.dart';

class RegisterButtonSubmitWidget extends StatelessWidget {
  const RegisterButtonSubmitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var registerViewModel = context.read<RegisterCubit>();
    return CustomButtonWidget(
      onPressed: () => registerViewModel.doAction(RegisterButtonSubmitAction()),
      text: "Sign Up",
    );
  }
}
