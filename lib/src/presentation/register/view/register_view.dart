import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_action.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_cubit.dart';

import '../../../../config/routes/page_route_name.dart';
import '../../../../core/utils/dialogs/loading_dialog.dart';
import '../../../../core/utils/widget/base_scaffold.dart';
import '../../../../dependency_inversion/di.dart';
import '../widget/register_body_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  var registerViewModel = getIt.get<RegisterCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => registerViewModel,
      child: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) =>_handleBlocListenerLoginState(state),
        child: BaseScaffold(
          child: SafeArea(
            child: Scaffold(
              body: RegisterBodyWidget(),
            ),
          ),
        ),
      ),
    );
  }


  dynamic _handleBlocListenerLoginState(RegisterState state) {
    if (state is RegisterLoadingState) {
      LoadingDialog.showLoadingDialog(context);
    }
    else if (state is RegisterSuccessState) {
      LoadingDialog.hideLoadingDialog(context);
      registerViewModel.doAction(NavigateToHomeScreenAction());
    }
    else if (state is RegisterErrorState) {
      LoadingDialog.hideLoadingDialog(context);
      LoadingDialog.showErrorDialog(context, message: state.message);
    }
    else if (state is NavigateToLoginScreenState) {
      return _goNextToLoginScreen();
    } else if (state is NavigateToBaseScreenState) {
      return _goNextToBaseScreen();
    }
  }

  void _goNextToLoginScreen() {
    Navigator.pushNamed(context, PageRouteName.login);
  }

  void _goNextToBaseScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, PageRouteName.section, (route) => false);
  }

  @override
  void dispose() {
    registerViewModel.dispose();
    super.dispose();
  }
}
