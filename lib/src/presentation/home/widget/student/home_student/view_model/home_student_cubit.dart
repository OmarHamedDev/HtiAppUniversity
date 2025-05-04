import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/entities/home_entity.dart';
import '../../../../../../domain/use_case/student/get_home_student_use_case.dart';
import 'home_student_action.dart';

part 'home_student_state.dart';

@injectable
class HomeStudentCubit extends Cubit<HomeStudentState> {
  final GetHomeStudentUseCase _getHomeStudentUseCase;
  HomeStudentCubit(this._getHomeStudentUseCase) : super(HomeStudentInitial());

  Future<void> doAction(GetHomeStudentAction action) async {
    switch (action) {
      case GetHomeStudentAction():
        return _getHomeStudent(studentId: action.id);
    }
  }

  DataHomeEntity? _dataHomeEntity;
  DataHomeEntity? get dataHomeEntity => _dataHomeEntity;
  Future<void> _getHomeStudent({required String studentId}) async {
    emit(GetHomeStudentLoadingState());
    var result = await _getHomeStudentUseCase.invoke(studentId: studentId);
    switch (result) {
      case Success<DataHomeEntity>():
        _dataHomeEntity = result.data;
        emit(GetHomeStudentSuccessState());
      case Failures<DataHomeEntity>():
        emit(GetHomeStudentErrorState(
          exception: result.exception,
        ));
    }
  }
}
