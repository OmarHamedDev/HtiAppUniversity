import 'package:hti_univerity/src/domain/entities/assignment_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/attendances_entity.dart';
import '../../domain/entities/home_entity.dart';
import '../../domain/entities/quiz_entity.dart';
import '../model/response/student_assignments_response/student_assignment_response.dart';
import '../model/response/student_attendance_response/student_attendance_response.dart';
import '../model/response/student_home_response/student_home_response.dart';
import '../model/response/student_quizzes_response/student_quiz_response.dart';

abstract class StudentMapper {
  DataHomeEntity mapStudentHomeResponseToDataHomeEntity(
      {required StudentHomeResponse studentHomeResponse});
  List<AttendancesEntity> mapStudentAttendanceResponseToAttendancesEntity(
      {required List<StudentAttendanceResponse> studentAttendanceResponse});
  List<AssignmentEntity> mapStudentAssignmentResponseToAssignmentEntity(
      {required List<StudentAssignmentResponse> studentAssignmentResponse});
  List<QuizEntity> mapStudentQuizResponseToQuizEntity(
      {required List<StudentQuizResponse> studentQuizResponse});
}

@Injectable(as: StudentMapper)
class StudentMapperImpl implements StudentMapper {

  @override
  DataHomeEntity mapStudentHomeResponseToDataHomeEntity(
      {required StudentHomeResponse studentHomeResponse}) {
    return DataHomeEntity(
      studentId: studentHomeResponse.studentId,
      name: studentHomeResponse.name,
      courses: _mapCoursesToCourseEntities(studentHomeResponse.courses),
      gpa: studentHomeResponse.gpa,
      totalUnits: studentHomeResponse.totalUnits,
    );
  }
  List<CourseEntity> _mapCoursesToCourseEntities(List<Courses>? courses) {
    if (courses == null || courses.isEmpty) return [];
    return courses.map((course) => _mapCourseToCourseEntity(course)).toList();
  }

  CourseEntity _mapCourseToCourseEntity(Courses course) {
    return CourseEntity(
      id: course.id,
      name: course.name,
      department: course.department,
    );
  }
  @override
  List<AttendancesEntity> mapStudentAttendanceResponseToAttendancesEntity(
      {required List<StudentAttendanceResponse> studentAttendanceResponse}) {
    if (studentAttendanceResponse.isEmpty) return [];
    return studentAttendanceResponse
        .map((studentAttendanceResponse) => AttendancesEntity(
            numberWeek: studentAttendanceResponse.week ?? "1",
            lecture: studentAttendanceResponse.lecture ?? "Present",
            section: studentAttendanceResponse.section ?? "Absent"))
        .toList();
  }

  @override
  List<AssignmentEntity> mapStudentAssignmentResponseToAssignmentEntity(
      {required List<StudentAssignmentResponse> studentAssignmentResponse}) {
    if (studentAssignmentResponse.isEmpty) return [];
    return studentAssignmentResponse
        .map((studentAssignmentResponse) => AssignmentEntity(
              assignmentId: studentAssignmentResponse.id ?? 0,
              title: studentAssignmentResponse.title ?? "",
              description: studentAssignmentResponse.description ?? "",
              deadline: studentAssignmentResponse.deadline ?? "",
              groupName: studentAssignmentResponse.groupName ?? "",
              weekNumber: studentAssignmentResponse.weekNumber ?? "",
              courseName: studentAssignmentResponse.courseName ?? "",
            ))
        .toList();
  }

  @override
  List<QuizEntity> mapStudentQuizResponseToQuizEntity(
      {required List<StudentQuizResponse> studentQuizResponse}) {
    if (studentQuizResponse.isEmpty) return [];
    return studentQuizResponse
        .map((studentQuizResponse) => QuizEntity(
              courseId: studentQuizResponse.id ?? 0,
              title: studentQuizResponse.title ?? "",
              quizDate: studentQuizResponse.quizDate ?? "",
              weekNumber: studentQuizResponse.weekNumber ?? "",
            ))
        .toList();
  }
}
