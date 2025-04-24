import 'package:flutter/material.dart';
import 'doctor_attendance_detials_list_widget.dart';
import '../doctor_attendance_title_widget.dart';
class DoctorAttendanceDetailsBodyWidget extends StatelessWidget {
  const DoctorAttendanceDetailsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          DoctorAttendanceTitleWidget(),
          DoctorAttendanceDetailsListWidget()
        ],
      ),
    );
  }
}
