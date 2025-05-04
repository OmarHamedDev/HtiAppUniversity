import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/doctor_quiz/view_model/doctor_quiz_action.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/use_case/doctor_use_case/create_quiz_doctor_use_case.dart';

part 'doctor_quiz_state.dart';

@injectable
class DoctorQuizCubit extends Cubit<DoctorQuizState> {
  final CreateQuizDoctorUseCase _addDoctorQuizUseCase;
  DoctorQuizCubit(this._addDoctorQuizUseCase) : super(DoctorQuizInitial());

  Future<void> doAction(DoctorQuizAction action) async {
    switch (action) {
      case AddDoctorQuizAction():
        return await _createAssignment();
    }
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController weekIdController = TextEditingController();
  TextEditingController courseGroupIdController = TextEditingController();
  var selectDate =  DateTime.now().toUtc().toIso8601String();
  var formKey = GlobalKey<FormState>();

  Future<void> _createAssignment() async {
    if (formKey.currentState!.validate()) {
      emit(AddDoctorQuizLoadingState());
      var result = await _addDoctorQuizUseCase.invoke(
        title: titleController.text,
        description: descriptionController.text,
        weekId: weekIdController.text,
        courseGroupId: 10,
        quizDate: selectDate,
      );
      switch (result) {
        case Success<String>():
          emit(AddDoctorQuizSuccessState());
        case Failures<String>():
          emit(AddDoctorQuizFailureState(result.exception));
      }
    }
  }
}
