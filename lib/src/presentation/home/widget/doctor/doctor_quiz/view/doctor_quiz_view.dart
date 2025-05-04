import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/api/network/error/error_handler.dart';
import '../../../../../../../core/utils/dialogs/loading_dialog.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/doctor_quiz_cubit.dart';
import '../widget/doctor_quiz_body_widget.dart';

class DoctorQuizView extends StatefulWidget {
  const DoctorQuizView({super.key});

  @override
  State<DoctorQuizView> createState() => _DoctorQuizViewState();
}

class _DoctorQuizViewState extends State<DoctorQuizView> {
  var doctorQuizCubit = getIt<DoctorQuizCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => doctorQuizCubit,
      child: BlocListener<DoctorQuizCubit, DoctorQuizState>(
        listener: (context, state) {
      if (state is AddDoctorQuizLoadingState) {
        LoadingDialog.showLoadingDialog(context);
      } else if (state is AddDoctorQuizFailureState) {
        LoadingDialog.hideLoadingDialog(context);
        final errorMessage = ErrorHandler.formException(Exception());
        LoadingDialog.showErrorDialog(context,
            message: errorMessage.errorMassage);
      } else if (state is AddDoctorQuizSuccessState) {
        LoadingDialog.hideLoadingDialog(context);
        LoadingDialog.showSuccessDialog(context,
            message: "Quiz Created Successfully");
      }
        },
        child: BaseScaffold(
          child: Scaffold(
            appBar: AppBar(
              leading: const BottomBackWidget(),
            ),
            body: DoctorQuizBodyWidget(),
          ),
        ),
      ),
    );
  }

}
