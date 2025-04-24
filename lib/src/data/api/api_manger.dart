import 'package:hti_univerity/src/data/model/request/register_request/register_request.dart';
import 'package:hti_univerity/src/data/model/response/app_user_response_model/app_user_response_model.dart';
import 'package:hti_univerity/src/data/model/response/course_doctor_response/course_doctor_response.dart';
import 'package:hti_univerity/src/data/model/response/student_assignments_response/student_assignment_response.dart';
import 'package:hti_univerity/src/data/model/response/student_quizzes_response/student_quiz_response.dart';
import 'package:injectable/injectable.dart';

import '../../../core/api/network/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/api/network/constants/end_points.dart';
import '../model/request/login_request/login_request.dart';
import '../model/response/attendance_week_details_response/attendance_week_details_response.dart';
import '../model/response/attendance_week_doctor_response/attendance_week_doctor_response.dart';
import '../model/response/student_attendance_response/student_attendance_response.dart';
import '../model/response/student_home_response/student_home_response.dart';

part 'api_manger.g.dart';

@injectable
@singleton
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiManger {
  @factoryMethod
  factory ApiManger(
    Dio dio,
  ) = _ApiManger;

  @POST(EndPoints.login)
  Future<AppUserResponseModel> login(@Body() LoginRequest loginRequest);
  @POST(EndPoints.register)
  Future<AppUserResponseModel> register(
      @Body() RegisterRequest registerRequest);

  @GET("${EndPoints.homeStudent}/{studentId}/home")
  Future<StudentHomeResponse> getHomeStudent(
      @Path('studentId') String studentId);

  @GET("Course/{studentId}/assignments")
  Future<List<StudentAssignmentResponse>> getAssignmentStudent(
      @Path('studentId') String studentId);

  @GET("Course/{studentId}/courses/{courseId}/attendance")
  Future<List<StudentAttendanceResponse>> getAttendanceStudent(
      @Path('studentId') String studentId, @Path('courseId') String courseId);

  @GET("Course/student/{studentId}/course/{courseId}/quizzes")
  Future<List<StudentQuizResponse>> getQuizStudent(
      @Path('studentId') String studentId, @Path('courseId') String courseId);
  @GET("Faculty/{doctorId}/groups")
  Future<List<CourseDoctorResponse>> getHomeDoctor(
      @Path('doctorId') String doctorId);

  @GET("Faculty/courses/{courseId}/attendance/weeks")
  Future<List<AttendanceWeekDoctorResponse>> getAttendanceAllWeekDoctor(
      @Path('courseId') String doctorId);

  @GET("Faculty/course-group/{courseId}/week/{weekId}")
  Future<List<AttendanceWeekDetailsResponse>> getAttendanceWeekDetails(
      @Path('courseId') String doctorId, @Path('weekId') String weekId);
}
