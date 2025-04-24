import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/assignment_student_action_state.dart';
import '../view_model/assignment_student_cubit.dart';
import '../widget/assignment_student_body_widget.dart';

class StudentAssignmentView extends StatefulWidget {
  const StudentAssignmentView({super.key});

  @override
  State<StudentAssignmentView> createState() => _StudentAssignmentViewState();
}

class _StudentAssignmentViewState extends State<StudentAssignmentView> {
  var assignmentStudentViewModel = getIt.get<AssignmentStudentCubit>();
  @override
  void initState() {
    assignmentStudentViewModel.doAction(GetAssignmentStudentAction(studentId: "4", courseId: "1"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => assignmentStudentViewModel,
      child: BaseScaffold(child: Scaffold(
          appBar: AppBar(
            leading: BottomBackWidget(),
          ),
          body: BlocBuilder<AssignmentStudentCubit, AssignmentStudentState>(
            builder: (context, state) {
              if(state is GetAssignmentStudentLoadingState){
                return HandleState.loading();
              }else if(state is GetAssignmentStudentErrorState){
                return HandleState.error(state.exception);
              }else{
                return AssignmentStudentBodyWidget();
              }
            },
          )
      )),
    );
  }
}
