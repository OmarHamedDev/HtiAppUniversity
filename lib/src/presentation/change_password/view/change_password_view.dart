import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:hti_univerity/src/presentation/widgets/bottom_back_widget.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/change_password_cubit.dart';
import '../widget/change_password_body.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  var changePasswordViewModel = getIt.get<ChangePasswordCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => changePasswordViewModel,
        child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
          listener: (context, state) => _handleBlocListenerState(state),
          child: BaseScaffold(
            child: Scaffold(
              appBar: AppBar(
               leading: BottomBackWidget(),
              ),
              body: const ChangePasswordBody(),
            ),
          ),
        ));
  }

  void _handleBlocListenerState(ChangePasswordState state) {
    // if (state is ChangePasswordLoadingState) {
    //   LoadingDialog.show(context);
    // } else if (state is ChangePasswordFailuresState) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     context,
    //     title: context.localizations.connectionError,
    //     desc: state.errorModel.errorMassage.toString(),
    //     onOk: () {},
    //     dialogType: DialogType.error,
    //   );
    // } else if (state is ChangePasswordSuccessState) {
    //   LoadingDialog.hide(context);
    //   showAwesomeDialog(
    //     dismiss: false,
    //     context,
    //     desc: "Change Password Successfully",
    //     title: "Success",
    //     onOk: () => Navigator.pushNamedAndRemoveUntil(
    //       context,
    //       PageRouteName.baseScreen,
    //       (route) => false,
    //     ),
    //     dialogType: DialogType.success,
    //   );
    }

}
