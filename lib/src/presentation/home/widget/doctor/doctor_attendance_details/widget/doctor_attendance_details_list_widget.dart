import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../../../widgets/status_widget/week_status_row_widget.dart';
import '../view_model/doctor_attendance_details_cubit.dart';
import 'item_week_status_attendance_doctor_details_widget.dart';

class DoctorAttendanceDetailsListWidget extends StatelessWidget {
  const DoctorAttendanceDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var attendanceDoctorCubit = context.read<DoctorAttendanceDetailsCubit>();
    final attendanceWeekDoctor = attendanceDoctorCubit.attendanceWeekDetails;
    return Expanded(
      child: BorderContainerStatusWidget(
        child: ListView.separated(itemBuilder: (context, index) {
          return ItemWeekStatusAttendanceDoctorDetailsWidget(
            weekTitle: attendanceWeekDoctor[index]?.studentName ?? "No Name",
            lectureStatus:  true ,  //attendanceWeekDoctor.isLecturePresent(index),
          );
        }, separatorBuilder:(context, index) {
          return WeekDividerWidget();
        }, itemCount: attendanceWeekDoctor.length),
      ),
    );
  }
}
