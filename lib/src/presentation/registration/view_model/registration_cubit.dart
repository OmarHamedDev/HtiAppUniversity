import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/registration_course_entity.dart';
import 'package:hti_univerity/src/domain/use_case/registration/get_registered_course_use_case.dart';
import 'package:hti_univerity/src/domain/use_case/registration/get_suggested_courses_use_case.dart';
import 'package:hti_univerity/src/presentation/registration/view_model/registration_action.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_table/registration_table_body_widget.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../data/model/request/add_registration_request/add_registration_request.dart';
import '../../../domain/entities/success_massage_entity.dart';
import '../../../domain/use_case/registration/add_registered_course_use_case.dart';
import '../../../domain/use_case/registration/delete_registered_course_course_use_case.dart';
import '../widget/registration_widget/registration_body_widget.dart'
    show RegistrationBodyWidget;
import '../widget/student_info_widget/student_info_widget.dart'
    show StudentInfoWidget;

part 'registration_state.dart';

@injectable
class RegistrationCubit extends Cubit<RegistrationState> {
  final GetRegisteredCourseUseCase _getRegisteredCourseUseCase;
  final DeleteRegisteredCourseCourseUseCase _deleteRegisteredCourseUseCase;
  final AddRegisteredCourseUseCase _addRegisteredCourseUseCase;
  final GetSuggestedCoursesUseCase _getSuggestedCoursesUseCase;
  RegistrationCubit(
      this._getSuggestedCoursesUseCase,
      this._deleteRegisteredCourseUseCase,
      this._addRegisteredCourseUseCase,
      this._getRegisteredCourseUseCase)
      : super(RegistrationInitial());

  Future<void> doAction(RegistrationAction action) async {
    switch (action) {
      case GetRegisteredCourseAction():
        return await getRegisteredCourses(studentId: action.studentId);
      case RemoveRegisteredCourseAction():
        return await _deleteRegisteredCourse(
            studentId: action.studentId, courseId: action.courseId);
      case AddRegisteredCourseAction():
        return await _addRegisteredCourse(
            studentId: action.studentId, courseId: action.courseId,groupId: action.groupId);
      case GetSuggestedCoursesAction():
        return await _getSuggestedCourses(studentId: action.studentId);
    }
  }

  List<RegisteredCourseEntity> _suggestedCourses = [];
  List<RegisteredCourseEntity> get suggestedCourses => _suggestedCourses;
  Future<void> _getSuggestedCourses({required String studentId}) async {
    emit(GetSuggestedCoursesLoadingState());
    final result = await _getSuggestedCoursesUseCase.invoke(studentId);
    switch (result) {
      case Success<List<RegisteredCourseEntity>>():
        _suggestedCourses = result.data ?? [];
        emit(GetSuggestedCoursesSuccessState());
      case Failures<List<RegisteredCourseEntity>>():
        emit(GetSuggestedCoursesErrorState(result.exception));
    }
  }

  Future<void> _addRegisteredCourse(
      {required int  studentId, required int courseId,required  int groupId }) async {
    emit(AddRegisteredCourseLoadingState());
    final addRegistrationRequest = AddRegistrationRequest(
      studentId: studentId,
      courseId: courseId,
      groupId: groupId
    );
    final result = await _addRegisteredCourseUseCase.invoke(
        addRegistrationRequest: addRegistrationRequest);
    switch (result) {
      case Success<SuccessMassageEntity>():
        emit(AddRegisteredCourseSuccessState());
        (result.data);
      case Failures<SuccessMassageEntity>():
        emit(AddRegisteredCourseErrorState(result.exception));
    }
  }

  Future<void> _deleteRegisteredCourse(
      {required String studentId, required int courseId}) async {
    emit(RemoveRegisteredCourseLoadingState());
    final result = await _deleteRegisteredCourseUseCase.invoke(
        studentId: studentId, courseId: courseId);
    switch (result) {
      case Success<SuccessMassageEntity>():
        emit(RemoveRegisteredCourseSuccessState());
        (result.data);
      case Failures<SuccessMassageEntity>():
        emit(RemoveRegisteredCourseErrorState(result.exception));
    }
  }

  List<RegisteredCourseEntity> _registeredCourses = [];
  List<RegisteredCourseEntity> get registeredCourses => _registeredCourses;
  Future<void> getRegisteredCourses({required String studentId}) async {
    emit(GetRegisteredCourseLoadingState());
    final result =
        await _getRegisteredCourseUseCase.invoke(studentId: studentId);
    switch (result) {
      case Success<List<RegisteredCourseEntity>>():
        _registeredCourses = result.data ?? [];
        emit(GetRegisteredCourseSuccessState());
      case Failures<List<RegisteredCourseEntity>>():
        emit(GetRegisteredCourseErrorState(result.exception));
    }
  }

  Widget bodyWidgetRegistration = RegistrationBodyWidget();
  void buildBodyBodyWidget(BodyWidgetType type) {
    switch (type) {
      case BodyWidgetType.registrationBody:
        bodyWidgetRegistration = RegistrationBodyWidget();
      case BodyWidgetType.studentInfo:
        bodyWidgetRegistration = StudentInfoWidget();
      case BodyWidgetType.tableBody:
        bodyWidgetRegistration = RegistrationTableBodyWidget();
    }
    emit(ChangeBodyWidgetState());
  }

  bool get isRegistrationBody =>
      bodyWidgetRegistration is RegistrationBodyWidget;
}

enum BodyWidgetType {
  registrationBody,
  studentInfo,
  tableBody,
}
