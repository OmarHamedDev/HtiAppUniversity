import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/doctor_attendance_details/widget/doctor_attendance_details_list_widget.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/doctor_attendance_details/widget/title_week_attendance_details_widget.dart';
import '../../doctor_attendance/widget/doctor_attendance_title_widget.dart';
class DoctorAttendanceDetailsBodyWidget extends StatelessWidget {
  const DoctorAttendanceDetailsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TitleWeekAttendanceDetailsWidget(),
          DoctorAttendanceDetailsListWidget()
        ],
      ),
    );
  }
}
