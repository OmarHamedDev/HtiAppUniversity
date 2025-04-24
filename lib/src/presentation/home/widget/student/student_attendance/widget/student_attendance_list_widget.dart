import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../../../widgets/status_widget/week_status_row_widget.dart';
import '../view_model/attendance_student_cubit.dart';

class StudentAttendanceListWidget extends StatelessWidget {
  const StudentAttendanceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var  studentAttendance = context.read<AttendanceStudentCubit>();
    final attendanceList = studentAttendance.studentAttendance;
    return Expanded(
      child: BorderContainerStatusWidget(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return WeekStatusRowWidget(
                weekTitle:  "Week ${attendanceList[index]?.numberWeek ?? index + 1}",
                lectureStatus: studentAttendance.isLecturePresent(index),
                sectionStatus: studentAttendance.isSectionPresent(index),
              );
            },
            separatorBuilder: (context, index) {
              return WeekDividerWidget();
            },
            itemCount: studentAttendance.studentAttendance.length),
      ),
    );
  }
}
