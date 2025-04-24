import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:hti_univerity/src/presentation/widgets/bottom_back_widget.dart';
import '../../../../config/routes/page_route_name.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/verify_reset_code_cubit.dart';
import '../widget/verify_reset_code_body.dart';

class VerifyResetCodeView extends StatefulWidget {
  const VerifyResetCodeView({super.key});

  @override
  State<VerifyResetCodeView> createState() => _VerifyResetCodeViewState();
}


class _VerifyResetCodeViewState extends State<VerifyResetCodeView> {
  var verifyResetCodeViewMode = getIt.get<VerifyResetCodeCubit>();

  @override
  Widget build(BuildContext context) {
    verifyResetCodeViewMode.email= "";
    //ModalRoute.of(context)?.settings.arguments as String;
    return BlocProvider(
      create: (context) => verifyResetCodeViewMode,
      child: BlocListener<VerifyResetCodeCubit, VerifyResetCodeState>(
        listener: (context, state) =>_handleBlocListerVerifyResetCodeState(state),
        child: BaseScaffold(
          child: Scaffold(
            appBar: AppBar(
            leading: BottomBackWidget(),
            ),
            body: const VerifyResetCodeBody(),
          ),
        ),
      ),
    );
  }


  dynamic _handleBlocListerVerifyResetCodeState(VerifyResetCodeState state) {
    // if (state is VerifyCodeLoadingStata) {
    //   LoadingDialog.show(context);
    // } else if (state is VerifyCodeErrorStata) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     title: context.localizations.error,
    //     desc: state.errorMassage.toString(),
    //     onOk: () {},
    //     dialogType: DialogType.error,
    //   );
    // } else if (state is VerifyCodeSuccessStata) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     title: context.localizations.success,
    //     dismiss: false,
    //     desc: state.massage ?? "",
    //     onOk: () =>verifyResetCodeViewMode.doAction(
    //         NavigateToResetPasswordAction()
    //     ),
    //     dialogType: DialogType.success,
    //   );
    //
    // } else if (state is NavigateToResetPasswordScreenState) {
    //  return  _navigateToResetPasswordScreen();
    // }
  }

  void _navigateToResetPasswordScreen() {
    Navigator.pushNamed(context, PageRouteName.resetPassword,arguments:verifyResetCodeViewMode.email);
}

}
