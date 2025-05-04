import 'package:hti_univerity/src/data/model/request/login_request/login_request.dart';
import 'package:hti_univerity/src/data/model/request/register_request/register_request.dart';
import 'package:hti_univerity/src/data/model/response/app_user_response_model/app_user_response_model.dart';
import 'package:hti_univerity/src/data/model/response/course_doctor_response/course_doctor_response.dart';
import 'package:hti_univerity/src/data/model/response/event_response_model/event_response_model.dart';
import 'package:hti_univerity/src/data/model/response/student_assignments_response/student_assignment_response.dart';
import 'package:hti_univerity/src/data/model/response/student_quizzes_response/student_quiz_response.dart';
import 'package:injectable/injectable.dart';

import '../../../core/api/network/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/api/network/constants/end_points.dart';
import '../model/request/add_registration_request/add_registration_request.dart';
import '../model/request/create_quize_request/create_quiz_request.dart';
import '../model/response/admin_notification_response_model/admin_notification_count_response_model.dart';
import '../model/response/attendance_week_details_response/attendance_week_details_response.dart';
import '../model/response/attendance_week_doctor_response/attendance_week_doctor_response.dart';
import '../model/response/doctor_assignment_sumbit_response_model/doctor_assignment_sumbit_response_model.dart';
import '../model/response/faculty_count_response_model/faculty_count_response_model.dart';
import '../model/response/notification_response_model/get_all_notification_response_model.dart';
import '../model/response/student_attendance_response/student_attendance_response.dart';
import '../model/response/student_count_response_model/student_count_response_model.dart';
import '../model/response/student_home_response/student_home_response.dart';
import '../model/response/suggested_courses_response_model/suggested_courses_response_model.dart';
import '../model/response/upload_success_response_model/upload_success_response_model.dart';
import '../model/response/registered_course_response_model/registered_course_response_model.dart';

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
  Future<AppUserResponseModel> login(
     @Body() LoginRequest loginRequest,
      );
  @POST("")
  Future<AppUserResponseModel> register(
      @Body() RegisterRequest registerRequest);


  //// Home Student Api
   @GET(EndPoints.homeStudent)
    Future<StudentHomeResponse> getHomeStudent(
      @Path('studentId') String studentId);
  @GET(EndPoints.homeStudentAssignment)
  Future<List<StudentAssignmentResponse>> getAssignmentStudent();
  @GET(EndPoints.courseAttendance)
  Future<List<StudentAttendanceResponse>> getAttendanceStudent(
      @Path('courseId') String courseId);
  @GET(EndPoints.courseQuizzes)
  Future<List<StudentQuizResponse>> getQuizStudent(
     @Path('courseId') String courseId);
 @GET(EndPoints.studentNotification)
  Future<List<GetAllNotificationResponseModel>> getAllNotificationStudent(
      @Path('studentId') String studentId);






  @GET("Faculty/{doctorId}/groups")
  Future<List<CourseDoctorResponse>> getHomeDoctor(
      @Path('doctorId') String doctorId);

  @GET("Faculty/courses/{courseId}/attendance/weeks")
  Future<List<AttendanceWeekDoctorResponse>> getAttendanceAllWeekDoctor(
      @Path('courseId') String doctorId);

  @GET("Faculty/course-group/{courseId}/week/{weekId}")
  Future<List<AttendanceWeekDetailsResponse>> getAttendanceWeekDetails(
      @Path('courseId') String doctorId, @Path('weekId') String weekId);

  @GET("Admin/events")
  Future<List<EventResponseModel>> getAllEvent();

  @POST("Admin/events/create")
  Future<UploadSuccessResponseModel> createEvent(
    @Part() String title,
    @Part() String description,
  );

  @MultiPart()
  @POST("Faculty/assignments")
  Future<UploadSuccessResponseModel> createAssignment(
    @Part(name: "Title") String title,
    @Part(name: "Description") String description,
    @Part(name: "WeekNumber") String weekNumber,
    @Part(name: "CourseGroupId") String groupNumberId,
  );
  @POST("Faculty/PostQuiz")
  Future<UploadSuccessResponseModel> createQuiz(
    @Body() CreateQuizRequest createQuizRequest,
  );

  @GET("Admin/notifications/unread-count")
  Future<AdminNotificationCountResponseModel> getAdminNotificationCount();
  @GET("Admin/students/count-per-semester")
  Future<List<StudentCountResponseModel>> getStudentCount();
  @GET("Admin/faculty/count")
  Future<FacultyCountResponseModel> getFacultyCount();

  @GET("Admin/notifications")
  Future<List<GetAllNotificationResponseModel>> getAllAdminNotification();

  @GET("Faculty/{id}/assignment-submissions-notifications")
  Future<List<DoctorAssignmentSumbitResponseModel>>
      getAssignmentSubmissionDoctorNotification(
    @Path('id') String doctorId,
  );

  @GET("CourseRegisteration/registered-courses/{studentId}")
  Future<List<RegisteredCourseResponseModel>> getRegisteredCourses(
    @Path('studentId') String studentId,
  );

  @GET("CourseRegisteration/suggested-courses/{studentId}")
  Future<List<SuggestedCoursesResponseModel>> getSuggestedCourses(
    @Path('studentId') String studentId,
  );

  @DELETE("CourseRegisteration/unregister-course")
  Future<UploadSuccessResponseModel> deleteRegisteredCourse(
      @Query('studentId') String studentId,
      @Query('courseId') int  courseId,
      );

    @POST("CourseRegisteration/register")
  Future<UploadSuccessResponseModel> addRegistration(
    @Body() AddRegistrationRequest addRegistrationRequest,
  );

}
