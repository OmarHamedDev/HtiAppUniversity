import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../config/routes/page_route_name.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/reset_password_cubit.dart';
import '../widget/reset_password_body_widget.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  var resetPasswordViewModel = getIt.get<ResetPasswordCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => resetPasswordViewModel,
      child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
        listener: (context, state) =>_handleBlocListerResetPasswordState(state),
        child: BaseScaffold(
          child: Scaffold(
              appBar: AppBar(
                leading: null,

              ),
              body: const ResetPasswordBodyWidget()),
        ),
      ),
    );
  }

  dynamic _handleBlocListerResetPasswordState(ResetPasswordState state) {
    // if (state is ResetPasswordLoadingStata) {
    //   LoadingDialog.show(context);
    // } else if (state is ResetPasswordErrorStata) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     title: "Error",
    //     desc: state.errorMassage.toString(),
    //     onOk: () {},
    //     dialogType: DialogType.error,
    //   );
    // } else if (state is ResetPasswordSuccessStata) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     dismiss: false,
    //     title: "Success",
    //     desc: state.massage,
    //     onOk: () =>
    //         resetPasswordViewModel.doAction(NavigateToBaseMainScreenAction()),
    //     dialogType: DialogType.success,
    //   );
    // } else if (state is NavigateToBaseScreenState) {
    //   _navigateToVerifyResetCodeState();
    // }
  }

  void _navigateToVerifyResetCodeState() {
    Navigator.pushNamedAndRemoveUntil(context, PageRouteName.section,(route) => false,);
  }
}
