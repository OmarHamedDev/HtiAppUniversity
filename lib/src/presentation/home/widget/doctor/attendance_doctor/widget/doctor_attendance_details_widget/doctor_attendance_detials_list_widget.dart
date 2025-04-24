import 'package:flutter/material.dart';

import '../../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../../../../widgets/status_widget/week_status_row_widget.dart';

class DoctorAttendanceDetailsListWidget extends StatelessWidget {
  const DoctorAttendanceDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return     Expanded(
      child: BorderContainerStatusWidget(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return WeekStatusRowWidget(
                weekTitle: "Week ${index + 1}",
                lectureStatus: index % 2 == 0,
                sectionStatus: index % 2 != 0,
              );
            },
            separatorBuilder: (context, index) {
              return WeekDividerWidget();
            },
            itemCount: 10),
      ),
    );
  }
}
