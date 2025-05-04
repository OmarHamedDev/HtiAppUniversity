import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../domain/use_case/doctor_use_case/create_assignment_doctor_use_case.dart';
import 'doctor_assignment_action.dart';

part 'doctor_assignment_state.dart';

@injectable
class DoctorAssignmentCubit extends Cubit<DoctorAssignmentState> {
  final CreateAssignmentDoctorUseCase _createAssignmentDoctorUseCase;
  DoctorAssignmentCubit(this._createAssignmentDoctorUseCase)
      : super(DoctorAssignmentInitial());

  Future<void> doAction(DoctorAssignmentAction action) async {
    switch (action) {
      case AddDoctorAssignmentAction():
        return await _createAssignment();
    }
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController weekIdController = TextEditingController();
  TextEditingController courseGroupIdController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Future<void> _createAssignment() async {
    if (formKey.currentState!.validate()) {
      emit(CreateDoctorAssignmentLoading());
      var result = await _createAssignmentDoctorUseCase.invoke(
        title: titleController.text,
        description: descriptionController.text,
        weekId: weekIdController.text,
        courseGroupId: courseGroupIdController.text,
      );
      switch (result) {
        case Success<String>():

          emit(CreateDoctorAssignmentSuccess());

        case Failures<String>():
          emit(CreateDoctorAssignmentError(result.exception));
      }
    }
  }
}
