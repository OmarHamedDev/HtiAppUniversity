import 'package:bloc/bloc.dart';
import 'package:hti_univerity/config/routes/app_page_route_provider.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/course_doctor_entity.dart';
import 'package:hti_univerity/src/domain/use_case/doctor_use_case/get_home_doctor_use_case.dart';
import 'package:hti_univerity/src/domain/use_case/student/get_home_student_use_case.dart';
import 'package:hti_univerity/src/presentation/home/view_model/home_action.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/home_entity.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeStudentUseCase _getHomeStudentUseCase;
  final GetHomeDoctorUseCase _getHomeDoctorUseCase;
  HomeCubit(this._getHomeStudentUseCase, this._getHomeDoctorUseCase)
      : super(HomeInitial());

  Future<void> doAction(HomeAction action) async {
    switch (action) {
      case GetHomeStateAction():
        return _callMethodHomeStateWithRole(action.role, action.id);
    }
  }

  void _callMethodHomeStateWithRole(Role role, String id) async {
    if (role == Role.student) {
      await _getHomeStudent(studentId: id);
      return;
    } else if (role == Role.faculty) {
      await _getHomeDoctorCourse(doctorId: id);
      return;
    } else if (role == Role.admin) {
      await _getHomeStudent(studentId: id);
      return;
    } else {
      return;
    }
  }

  //// Home Student
  DataHomeEntity? _dataHomeEntity;
  DataHomeEntity? get dataHomeEntity => _dataHomeEntity;
  Future<void> _getHomeStudent({required String studentId}) async {
    emit(GetHomeLoadingState());
    var result = await _getHomeStudentUseCase.invoke(studentId: studentId);
    switch (result) {
      case Success<DataHomeEntity>():
        _dataHomeEntity = result.data;
        emit(GetHomeSuccessState());
      case Failures<DataHomeEntity>():
        emit(GetHomeErrorState(
          exception: result.exception,
        ));
    }
  }

  /// Doctor home
  List<CourseDoctorEntity> _doctorCourseEntity = [];
  List<CourseDoctorEntity> get doctorCourseEntity => _doctorCourseEntity;
  Future<void> _getHomeDoctorCourse({required String doctorId}) async {
    emit(GetHomeLoadingState());
    var result = await _getHomeDoctorUseCase.invoke(doctorId: doctorId);
    switch (result) {
      case Success<List<CourseDoctorEntity>>():
        _doctorCourseEntity = result.data;
        emit(GetHomeSuccessState());
      case Failures<List<CourseDoctorEntity>>():
        emit(GetHomeErrorState(
          exception: result.exception,
        ));
    }
  }
}
