import 'package:flutter/material.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../widget/doctor_attendance_details_widget/doctor_attendance_detials_list_widget.dart';
import '../widget/doctor_attendance_title_widget.dart';

class DoctorAttendanceDetailsView extends StatelessWidget {
  const DoctorAttendanceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Scaffold(
        appBar: AppBar(
          leading: BottomBackWidget(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DoctorAttendanceTitleWidget(),
              DoctorAttendanceDetailsListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
