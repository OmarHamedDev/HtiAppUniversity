import 'package:hti_univerity/src/data/model/response/course_doctor_response/course_doctor_response.dart';
import 'package:hti_univerity/src/domain/entities/attendance_week_doctor_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/attendance_week_details_entity.dart';
import '../../domain/entities/course_doctor_entity.dart';
import '../model/response/attendance_week_details_response/attendance_week_details_response.dart';
import '../model/response/attendance_week_doctor_response/attendance_week_doctor_response.dart';

abstract class DoctorMapper {
  List<CourseDoctorEntity> mapDoctorHomeResponseToCourseDoctorEntity(
      {required List<CourseDoctorResponse> courseDoctorResponse});

  List<AttendanceWeekDoctorEntity>
      mapAttendanceWeekDoctorResponseToAttendanceWeekDoctorEntity(
          {required List<AttendanceWeekDoctorResponse>
              attendanceWeekDoctorResponse});

  List<AttendanceWeekDetailsEntity>
      mapAttendanceWeekDetailsResponseToAttendanceWeekDetailsEntity(
          {required List<AttendanceWeekDetailsResponse>
              attendanceWeekDoctorResponse});
}

@Injectable(as: DoctorMapper)
class DoctorMapperImpl implements DoctorMapper {
  @override
  List<CourseDoctorEntity> mapDoctorHomeResponseToCourseDoctorEntity(
      {required List<CourseDoctorResponse> courseDoctorResponse}) {
    if (courseDoctorResponse.isEmpty) return [];
    return courseDoctorResponse
        .map((courseDoctorResponse) => CourseDoctorEntity(
              groupName: courseDoctorResponse.groupName ?? "",
              courseName: courseDoctorResponse.courseName ?? " ",
              facultyName: courseDoctorResponse.facultyName ?? " ",
            ))
        .toList();
  }

  @override
  List<AttendanceWeekDoctorEntity>
      mapAttendanceWeekDoctorResponseToAttendanceWeekDoctorEntity(
          {required List<AttendanceWeekDoctorResponse>
              attendanceWeekDoctorResponse}) {
    if (attendanceWeekDoctorResponse.isEmpty) return [];
    return attendanceWeekDoctorResponse
        .map((attendanceWeekDoctorResponse) => AttendanceWeekDoctorEntity(
              id: attendanceWeekDoctorResponse.weekNumber ?? 1,
              name: attendanceWeekDoctorResponse.weekName ?? " ",
            ))
        .toList();
  }

  @override
  List<AttendanceWeekDetailsEntity>
      mapAttendanceWeekDetailsResponseToAttendanceWeekDetailsEntity(
          {required List<AttendanceWeekDetailsResponse>
              attendanceWeekDoctorResponse}) {
    if (attendanceWeekDoctorResponse.isEmpty) return [];
    return attendanceWeekDoctorResponse
        .map((attendanceWeekDoctorResponse) => AttendanceWeekDetailsEntity(
              isPresent: attendanceWeekDoctorResponse.isPresent ?? false,
              studentName: attendanceWeekDoctorResponse.studentName ?? " ",
              studentUniversityId:
                  attendanceWeekDoctorResponse.studentUniversityId ?? " ",
            ))
        .toList();
  }
}
