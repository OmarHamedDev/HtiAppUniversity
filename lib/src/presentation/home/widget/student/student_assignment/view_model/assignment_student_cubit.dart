import 'package:bloc/bloc.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/assignment_entity.dart';
import 'package:hti_univerity/src/domain/use_case/student/get_assignment_for_student_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'assignment_student_action_state.dart';

part 'assignment_student_state.dart';

@injectable
class AssignmentStudentCubit extends Cubit<AssignmentStudentState> {
  final GetAssignmentForStudentUseCase _getAssignmentForStudentUseCase;
  AssignmentStudentCubit(this._getAssignmentForStudentUseCase)
      : super(AssignmentStudentInitial());

  Future<void>doAction(AssignmentStudentAction assignmentStudentAction)async {
  switch (assignmentStudentAction) {
    case GetAssignmentStudentAction(): return await _getAssignmentStudent();
  }
  }


  List<AssignmentEntity> _assignmentStudent = [];
  List<AssignmentEntity> get assignmentList => _assignmentStudent;
  Future<void> _getAssignmentStudent(
      ) async {
    emit(GetAssignmentStudentLoadingState());
    var result = await _getAssignmentForStudentUseCase.invoke();
    switch (result) {
      case Success<List<AssignmentEntity>>():
        _assignmentStudent = result.data ?? [];
        emit(GetAssignmentStudentSuccessState());
      case Failures<List<AssignmentEntity>>():
        emit(GetAssignmentStudentErrorState(exception: result.exception));
    }
  }


  String formatDeadline(String deadline) {
    if (deadline == "0001-01-01T00:00:00") {
      return "No deadline provided";
    }

    try {
      final dateTime = DateTime.parse(deadline);
      final formattedDate = "${dateTime.day}/${dateTime.month}/${dateTime.year}";
      return formattedDate;
    } catch (e) {
      return "Invalid date format";
    }
  }
}
