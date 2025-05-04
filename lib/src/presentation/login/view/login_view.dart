import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/dialogs/loading_dialog.dart';
import 'package:hti_univerity/src/presentation/login/view_model/login_action.dart';
import 'package:hti_univerity/src/presentation/login/view_model/login_cubit.dart';
import '../../../../config/routes/page_route_name.dart';
import '../../../../core/utils/widget/base_scaffold.dart';
import '../../../../dependency_inversion/di.dart';
import '../widget/login_body_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  var loginViewModel = getIt<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginViewModel,
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) =>_handleBlocListenerLoginState(state),
        child: BaseScaffold(
            child: Scaffold(
              body: LoginBodyWidget(),
            )),
      ),
    );
  }


  dynamic _handleBlocListenerLoginState(LoginState state){
    if(state is LoginLoadingState){
      LoadingDialog.showLoadingDialog(context);}
    else if(state is LoginSuccessState){
      LoadingDialog.hideLoadingDialog(context);
      loginViewModel.doAction(NavigateToBaseScreenAction());
    }
    else if(state is LoginFailuresState){
      LoadingDialog.hideLoadingDialog(context);
      LoadingDialog.showErrorDialog(context, message: state.errorMassage);
    }
    else if(state is NavigateToRegisterScreenState){
     return _goNextToRegisterScreen();
    }else if(state is NavigateToForgetPasswordScreenState){
      return _goNextToForgetPasswordScreen();
    }else if(state is NavigateToBaseScreenState){
      return _goNextToBaseScreen();
    }
  }

  void _goNextToRegisterScreen(){
    Navigator.pushNamed(context,  PageRouteName.register);
  }
  void _goNextToForgetPasswordScreen(){
    Navigator.pushNamed(context,  PageRouteName.forgetPassword);
  }
  void _goNextToBaseScreen()async{
    await context.appConfigProvider.initializeAppConfig();
    Navigator.pushNamed(context, PageRouteName.section);
  }
}
