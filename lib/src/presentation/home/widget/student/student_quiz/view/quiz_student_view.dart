import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/quiz_student_action_state.dart';
import '../view_model/quiz_student_cubit.dart';
import '../widget/quiz_student_body_widget.dart';

class QuizStudentView extends StatefulWidget {
  const QuizStudentView({super.key});

  @override
  State<QuizStudentView> createState() => _QuizStudentView();
}

class _QuizStudentView extends State<QuizStudentView> {
  var assignmentStudentViewModel = getIt.get<QuizStudentCubit>();
  @override
  void initState() {
    assignmentStudentViewModel.doAction(GetQuizStudentAction(studentId: "4", courseId: "1"));
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
          body: BlocBuilder<QuizStudentCubit, QuizStudentState>(
            builder: (context, state) {
              if(state is GetQuizStudentLoadingState){
                return HandleState.loading();
              }else if(state is GetQuizStudentErrorState){
                return HandleState.error(state.exception);
              }else{
                return QuizStudentBodyWidget();
              }
            },
          )
      )),
    );
  }
}
