import 'package:hti_univerity/src/data/model/response/upload_success_response_model/upload_success_response_model.dart';
import 'package:hti_univerity/src/domain/entities/success_massage_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/registration_course_entity.dart';
import '../model/response/registered_course_response_model/registered_course_response_model.dart';
import '../model/response/suggested_courses_response_model/suggested_courses_response_model.dart';

abstract class RegisteredMapper {
  List<RegisteredCourseEntity> mapRegisteredResponseToRegisteredEntity(
      {required List<RegisteredCourseResponseModel> responseModel});
  SuccessMassageEntity mapRegistrationResponseToSuccessMassageEntity(
      {required UploadSuccessResponseModel responseModel});

  List<RegisteredCourseEntity> mapRegisteredSuggestedResponseToRegisteredEntity(
      {required List<SuggestedCoursesResponseModel> responseModel});
}

@Injectable(as: RegisteredMapper)
class RegisteredMapperImpl implements RegisteredMapper {
  @override
  List<RegisteredCourseEntity> mapRegisteredResponseToRegisteredEntity(
      {required List<RegisteredCourseResponseModel> responseModel}) {
    if (responseModel == null) return [];
    return responseModel
        .map((e) => RegisteredCourseEntity(
              courseId: e.courseId ?? 1,
              courseName: e.courseName,
              groupName: e.groupName,
              units: e.units,
              dateRegistered: e.dateRegistered,
            ))
        .toList();
  }

  @override
  SuccessMassageEntity mapRegistrationResponseToSuccessMassageEntity(
      {required UploadSuccessResponseModel responseModel}) {
    return SuccessMassageEntity(
      message: responseModel.message ?? 'Success',
    );
  }

  @override
  List<RegisteredCourseEntity> mapRegisteredSuggestedResponseToRegisteredEntity(
      {required List<SuggestedCoursesResponseModel> responseModel}) {
    if (responseModel.isEmpty) return [];
    return responseModel
        .map((e) => RegisteredCourseEntity(
              courseId: e.courseId ?? 1,
              courseName: e.courseName,
              groupName: e.groupName,
              units: e.units,
              dateRegistered: e.startTime,
              dayName: e.day,
              groupId: e.groupId,
              availableSeats: e.availableSeats,
            ))
        .toList();
  }
}
