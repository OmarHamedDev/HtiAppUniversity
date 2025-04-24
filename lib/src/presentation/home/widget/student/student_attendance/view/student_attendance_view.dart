import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/attendance_student_action_state.dart';
import '../view_model/attendance_student_cubit.dart';
import '../widget/student_attendance_body_widget.dart';

class StudentAttendanceView extends StatefulWidget {
  const StudentAttendanceView({super.key});

  @override
  State<StudentAttendanceView> createState() => _StudentAttendanceViewState();
}

class _StudentAttendanceViewState extends State<StudentAttendanceView> {

  var studentAttendanceCubit = getIt<AttendanceStudentCubit>();

  @override
  void initState() {
    studentAttendanceCubit.doAction(GetStudentAttendanceAction(
      studentId: "4", courseId: "1",));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => studentAttendanceCubit,
      //..doAction(GetAttendanceStudentAction(studentId: "",courseId: "",)),
      child: BaseScaffold(
          child: Scaffold(
              appBar: AppBar(
                leading: BottomBackWidget(),
              ),
              body: BlocBuilder<AttendanceStudentCubit, AttendanceStudentState>(
                builder: (context, state) {
                  return _handleBlocBuilderAttendanceStudent(state);
                }
              )
          )),
    );
  }

  Widget _handleBlocBuilderAttendanceStudent(AttendanceStudentState state){
    if(state is GetAttendanceStudentLoadingState){
      return HandleState.loading();
    }
    else if(state is GetAttendanceStudentErrorState){
      return HandleState.error(state.exception);
    }
    return StudentAttendanceBodyWidget();
  }





}
