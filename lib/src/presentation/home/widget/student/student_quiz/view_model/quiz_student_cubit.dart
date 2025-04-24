import 'package:bloc/bloc.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/use_case/student/get_quiz_for_student_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../domain/entities/quiz_entity.dart';
import 'quiz_student_action_state.dart';

part 'quiz_student_state.dart';

@injectable
class QuizStudentCubit extends Cubit<QuizStudentState> {
  final GetQuizForStudentUseCase _getQuizForStudentUseCase;
  QuizStudentCubit(this._getQuizForStudentUseCase)
      : super(QuizStudentInitial());

  Future<void> doAction(QuizStudentActionState quizStudentAction) async {
    switch (quizStudentAction) {
      case GetQuizStudentAction():
        return await _getQuizStudent(
            studentId: quizStudentAction.studentId,
            courseId: quizStudentAction.courseId);
    }
  }

  List<QuizEntity> _quizStudentList = [];
  List<QuizEntity> get quizStudentList => _quizStudentList;
  Future<void> _getQuizStudent(
      {required String studentId, required String courseId}) async {
    emit(GetQuizStudentLoadingState());
    var result = await _getQuizForStudentUseCase.invoke(
        studentId: studentId, courseId: courseId);
    switch (result) {
      case Success<List<QuizEntity>>():
        _quizStudentList = result.data;
        emit(GetQuizStudentSuccessState());
      case Failures<List<QuizEntity>>():
        emit(GetQuizStudentErrorState(exception: result.exception));
    }
  }

  String formatDeadline(String deadline) {
    if (deadline == "0001-01-01T00:00:00") {
      return "No deadline provided";
    }

    try {
      final dateTime = DateTime.parse(deadline);
      final formattedDate =
          "${dateTime.day}/${dateTime.month}/${dateTime.year}";
      return formattedDate;
    } catch (e) {
      return "Invalid date format";
    }
  }
}
