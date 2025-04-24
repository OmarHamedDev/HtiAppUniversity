import 'package:flutter/material.dart';

import '../../../../../widgets/status_widget/border_container_status_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../shared_widget/weekly_assignment_widget.dart';

class DoctorAssignmentListWidget extends StatelessWidget {
  const DoctorAssignmentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return             Expanded(
      child: BorderContainerStatusWidget(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return WeeklyAssignmentWidget(
                  weekNumber: "${index + 1}",
                  type: "Assignment ${index + 1}",
                  date: "Assignment ${index + 1}",
                  courseName: "Assignment ${index + 1}",
                );
              },
              separatorBuilder: (context, index) {
                return WeekDividerWidget();
              },
              itemCount: 20)),
    );
  }
}
