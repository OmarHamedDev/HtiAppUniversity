import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../shared_widget/weekly_assignment_widget.dart';
import '../view_model/quiz_student_cubit.dart';

class QuizStudentListWidget extends StatelessWidget {
  const QuizStudentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var quizStudentViewModel = context.read<QuizStudentCubit>();
    final quizStudentList = quizStudentViewModel.quizStudentList;
    return Expanded(
      child: BorderContainerStatusWidget(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return WeeklyAssignmentWidget(
                  type: "Quiz",
                  courseName: quizStudentList[index].title,
                  date: quizStudentViewModel
                      .formatDeadline(quizStudentList[index].quizDate),
                  weekNumber: (index + 1).toString(),
                );
              },
              separatorBuilder: (context, index) {
                return WeekDividerWidget();
              },
              itemCount: quizStudentList.length)),
    );
  }
}
