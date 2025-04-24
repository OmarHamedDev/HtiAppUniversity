import 'package:hti_univerity/src/data/api/api_manger.dart';
import 'package:hti_univerity/src/data/data_source/remote_data_source/student_remote_data_source/student_remote_data_source.dart';
import 'package:hti_univerity/src/domain/entities/assignment_entity.dart';
import 'package:hti_univerity/src/domain/entities/attendances_entity.dart';
import 'package:hti_univerity/src/domain/entities/home_entity.dart';
import 'package:hti_univerity/src/domain/entities/quiz_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../mappers/student_mapper.dart';

@Injectable(as: StudentRemoteDataSource)
class StudentRemoteDataSourceImpl implements StudentRemoteDataSource {
  final ApiManger _apiManger;
  final StudentMapper _studentMapper;
  StudentRemoteDataSourceImpl(this._apiManger, this._studentMapper);
  @override
  Future<List<AttendancesEntity>> getAttendanceStudent(
      String studentId, String courseId) async {
    var attendanceResponse =
        await _apiManger.getAttendanceStudent(studentId, courseId);
    return _studentMapper.mapStudentAttendanceResponseToAttendancesEntity(
        studentAttendanceResponse: attendanceResponse);
  }

  @override
  Future<List<AssignmentEntity>> getAssignmentStudent(String studentId) async {
    var assignmentResponse = await _apiManger.getAssignmentStudent(studentId);
    return _studentMapper.mapStudentAssignmentResponseToAssignmentEntity(
        studentAssignmentResponse: assignmentResponse);
  }

  @override
  Future<List<QuizEntity>> getQuizStudent(
      String studentId, String courseId) async {
    var quizResponse = await _apiManger.getQuizStudent(studentId, courseId);
    return _studentMapper.mapStudentQuizResponseToQuizEntity(
        studentQuizResponse: quizResponse);
  }

  @override
  Future<DataHomeEntity> getHomeStudent({required String studentId}) async {
    var studentHomeResponse = await _apiManger.getHomeStudent(studentId);
    return _studentMapper.mapStudentHomeResponseToDataHomeEntity(
        studentHomeResponse: studentHomeResponse);
  }
}
