import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../shared_widget/weekly_assignment_widget.dart';
import '../view_model/assignment_student_cubit.dart';
class AssignmentStudentListWidget extends StatelessWidget {
  const AssignmentStudentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var assignmentStudentViewModel = context.read<AssignmentStudentCubit>();
    final assignmentList = assignmentStudentViewModel.assignmentList;
    return Expanded(
      child: BorderContainerStatusWidget(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return WeeklyAssignmentWidget(
                type: "Assignment",
                courseName: assignmentList[index].courseName,
                date:assignmentStudentViewModel.formatDeadline(assignmentList[index].deadline)   ,
                weekNumber: assignmentList[index].weekNumber,
                );
              },
              separatorBuilder: (context, index) {
                return WeekDividerWidget();
              },
              itemCount: assignmentStudentViewModel.assignmentList.length)),
    );
  }
}
