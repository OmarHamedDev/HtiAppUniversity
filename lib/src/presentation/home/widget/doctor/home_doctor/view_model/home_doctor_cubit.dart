import 'package:bloc/bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/home_doctor/view_model/home_doctor_action.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/entities/course_doctor_entity.dart';
import '../../../../../../domain/use_case/doctor_use_case/get_home_doctor_use_case.dart';

part 'home_doctor_state.dart';

@injectable
class HomeDoctorCubit extends Cubit<HomeDoctorState> {
  final GetHomeDoctorUseCase _getHomeDoctorUseCase;

  HomeDoctorCubit(this._getHomeDoctorUseCase) : super(HomeDoctorInitial());

  Future<void> doAction(HomeDoctorAction action) async {
    switch (action) {
      case GetHomeDoctorAction():
        return _getHomeDoctorCourse(doctorId: action.id);
    }
  }

  List<CourseDoctorEntity> _doctorCourseEntity = [];
  List<CourseDoctorEntity> get doctorCourseEntity => _doctorCourseEntity;
  Future<void> _getHomeDoctorCourse({required String doctorId}) async {
    emit(GetHomeDoctorLoadingState());
    var result = await _getHomeDoctorUseCase.invoke(doctorId: doctorId);
    switch (result) {
      case Success<List<CourseDoctorEntity>>():
        _doctorCourseEntity = result.data;
        emit(GetHomeDoctorSuccessState());
      case Failures<List<CourseDoctorEntity>>():
        emit(GetHomeDoctorErrorState(
          exception: result.exception,
        ));
    }
  }
}
