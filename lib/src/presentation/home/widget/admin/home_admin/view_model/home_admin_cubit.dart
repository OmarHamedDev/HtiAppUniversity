import 'package:bloc/bloc.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/admin_notifcition_count.dart';
import 'package:hti_univerity/src/domain/entities/faculty_count_entity.dart';
import 'package:hti_univerity/src/domain/use_case/admin_use_case/get_faculty_count_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../../../domain/entities/sudent_count_entity.dart';
import '../../../../../../domain/use_case/admin_use_case/get_admin_notification_count_use_case.dart';
import '../../../../../../domain/use_case/admin_use_case/get_student_count_use_case.dart';
import 'home_admin_action.dart';

part 'home_admin_state.dart';

@injectable
class HomeAdminCubit extends Cubit<HomeAdminState> {
  final GetFacultyCountUseCase _getFacultyCountUseCase;
  final GetStudentCountUseCase _getStudentCountUseCase;
  final GetAdminNotificationCountUseCase _getAdminNotificationCountUseCase;

  HomeAdminCubit(
      this._getFacultyCountUseCase,
      this._getStudentCountUseCase,
      this._getAdminNotificationCountUseCase,
      ) : super(HomeAdminInitial());

  Future<void> doAction(HomeAdminAction action) async {
    if (action is CallGetHomeAdminAction) {
      await init();
    }
  }

  Future<void> init() async {
    emit(HomeAdminLoadingState());

    await Future.wait([
      _getFacultyCount(),
      _getStudentCount(),
     // _getAdminNotificationCount(),
    ]);

    emit(HomeAdminSuccessState());
  }

  FacultyCountEntity? _facultyCountEntity;
  FacultyCountEntity? get facultyCountEntity => _facultyCountEntity;

  Future<void> _getFacultyCount() async {
    var result = await _getFacultyCountUseCase.invoke();
    switch (result) {
      case Success<FacultyCountEntity>():
        _facultyCountEntity = result.data;
      case Failures<FacultyCountEntity>():
        emit(HomeAdminErrorState(exception: result.exception));
    }
  }

  List<StudentCountEntity>? _studentCountEntity;
  List<StudentCountEntity>? get studentCountEntity => _studentCountEntity;

  Future<void> _getStudentCount() async {
    var result = await _getStudentCountUseCase.invoke();
    switch (result) {
      case Success<List<StudentCountEntity>>():
        _studentCountEntity = result.data;
      case Failures<List<StudentCountEntity>>():
        emit(HomeAdminErrorState(exception: result.exception));
    }
  }

  AdminNotificationCount? _adminNotificationCount;
  AdminNotificationCount? get adminNotificationCount => _adminNotificationCount;

  Future<void> _getAdminNotificationCount() async {
    var result = await _getAdminNotificationCountUseCase.invoke();
    switch (result) {
      case Success<AdminNotificationCount>():
        _adminNotificationCount = result.data;
      case Failures<AdminNotificationCount>():
        emit(HomeAdminErrorState(exception: result.exception));
    }
  }
}
