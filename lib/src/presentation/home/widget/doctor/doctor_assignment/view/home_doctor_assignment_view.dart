import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/api/network/error/error_handler.dart';
import '../../../../../../../core/utils/dialogs/loading_dialog.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/doctor_assignment_cubit.dart';
import '../widget/doctor_assignment_body_widget.dart';

class DoctorAssignmentView extends StatefulWidget {
  const DoctorAssignmentView({super.key});

  @override
  State<DoctorAssignmentView> createState() => _DoctorAssignmentViewState();
}

class _DoctorAssignmentViewState extends State<DoctorAssignmentView> {
  var doctorAssignmentCubit = getIt<DoctorAssignmentCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => doctorAssignmentCubit,
      child: BlocListener<DoctorAssignmentCubit, DoctorAssignmentState>(
        listener: (context, state) {
          _handleBlocListenerEventState(state);
        },
        child: BaseScaffold(
          child: Scaffold(
            appBar: AppBar(
              leading: const BottomBackWidget(),
            ),
            body: DoctorAssignmentBodyWidget(),
          ),
        ),
      ),
    );
  }

  dynamic _handleBlocListenerEventState(DoctorAssignmentState state) {
    if (state is CreateDoctorAssignmentLoading) {
      LoadingDialog.showLoadingDialog(context);
    } else if (state is CreateDoctorAssignmentError) {
      LoadingDialog.hideLoadingDialog(context);
      final errorMessage = ErrorHandler.formException(state.exception);
      LoadingDialog.showErrorDialog(context,
          message: errorMessage.errorMassage);
    } else if (state is CreateDoctorAssignmentSuccess) {
      LoadingDialog.hideLoadingDialog(context);
      LoadingDialog.showSuccessDialog(context,
          message: "Assignment Created Successfully");
    }
  }
}
