import 'package:bloc/bloc.dart';
import 'package:hti_univerity/src/domain/repository/student_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/entities/attendances_entity.dart';
import '../../../../../../domain/use_case/student/get_attendance_for_student_use_case.dart';
import 'attendance_student_action_state.dart';

part 'attendance_student_state.dart';

@injectable
class AttendanceStudentCubit extends Cubit<AttendanceStudentState> {
  final GetAttendanceForStudentUseCase _getStudentAttendanceUseCase;
  AttendanceStudentCubit(this._getStudentAttendanceUseCase)
      : super(AttendanceStudentInitial());

  Future<void> doAction(
      StudentAttendanceAction homeStudentAttendanceAction) async {
    switch (homeStudentAttendanceAction) {
      case GetStudentAttendanceAction():
        return await _getAttendanceStudent(
            courseId: homeStudentAttendanceAction.courseId);
    }
  }

  List<AttendancesEntity> _studentAttendance = [];
  List<AttendancesEntity> get studentAttendance => _studentAttendance;

  bool isLecturePresent(int index) =>
      _studentAttendance[index].lecture == "Present";
  bool isSectionPresent(int index) =>
      _studentAttendance[index].section == "Present";
  Future<void> _getAttendanceStudent(
      { required String courseId}) async {
    emit(GetAttendanceStudentLoadingState());
    var result = await _getStudentAttendanceUseCase.invoke(
     courseId: courseId);
    switch (result) {
      case Success<List<AttendancesEntity>>():
        _studentAttendance = result.data ?? [];
        emit(GetAttendanceStudentSuccessState());
      case Failures<List<AttendancesEntity>>():
        emit(GetAttendanceStudentErrorState(exception: result.exception));
    }
  }
}
