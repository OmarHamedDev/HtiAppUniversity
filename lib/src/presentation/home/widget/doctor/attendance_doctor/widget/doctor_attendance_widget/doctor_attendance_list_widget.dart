import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/config/routes/page_route_name.dart';

import '../../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../view_model/attendance_doctor_cubit.dart';
import 'item_doctor_attendance_widget.dart';

class DoctorAttendanceListWidget extends StatelessWidget {
  const DoctorAttendanceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var attendanceDoctorCubit = context.read<AttendanceDoctorCubit>();
    final attendanceWeekDoctor = attendanceDoctorCubit.attendanceWeekDoctor;
    return Expanded(
      child: BorderContainerStatusWidget(
        child: ListView.separated(itemBuilder: (context, index) {
          return InkWell(
              onTap: () => _navigateToAttendanceDetails(context),
              child: ItemDoctorAttendanceWidget(weekName: attendanceWeekDoctor[index].name ,));
        }, separatorBuilder:(context, index) {
          return WeekDividerWidget();
        }, itemCount: attendanceWeekDoctor.length),
      ),
    );
  }


  void _navigateToAttendanceDetails(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.doctorAttendanceDetails);
  }
}
