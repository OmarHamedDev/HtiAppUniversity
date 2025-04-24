import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:hti_univerity/src/presentation/widgets/bottom_back_widget.dart';

import '../../../../config/routes/page_route_name.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/forget_password_cubit.dart';
import '../widget/forget_password_body_widget.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  var forgetPasswordViewModel = getIt.get<ForgetPasswordCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => forgetPasswordViewModel,
      child: BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
          _handleBlocListerForgetPassword(state);
        },
        child: BaseScaffold(
          child: Scaffold(
            appBar: AppBar(
             leading: BottomBackWidget(),
            ),
            body: const ForgetPasswordBodyWidget(),
          ),
        ),
      ),
    );
  }



  dynamic _handleBlocListerForgetPassword(ForgetPasswordState state) {
    // if (state is ForgetPasswordLoadingState) {
    //   LoadingDialog.show(context);
    // }
    // else if (state is ForgetPasswordErrorState) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     title: "Error",
    //     desc: state.errorModel.errorMassage.toString(),
    //     onOk: () {},
    //     dialogType: DialogType.error,
    //   );
    // }
    // else if (state is ForgetPasswordSuccessState) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     dismiss: false,
    //     title: "Success",
    //     desc:state.massage,
    //     onOk: ()=>  forgetPasswordViewModel.doAction(NavigateVerifyResetCodeScreenAction()),
    //     dialogType: DialogType.success,
    //   );} else if (state is NavigateToVerifyResetCodeState)
    //   {
    //   _navigateToVerifyResetCodeState();
    // }
  }

  void _navigateToVerifyResetCodeState() {
    Navigator.pushNamed(context, PageRouteName.verifyResetCode,arguments:forgetPasswordViewModel.emailController.text );
  }
}
