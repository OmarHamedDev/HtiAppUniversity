import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/student_attendance/widget/student_attendance_list_widget.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../../../../../widgets/status_widget/week_header_row_widget.dart';

class StudentAttendanceBodyWidget extends StatelessWidget {
  const StudentAttendanceBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.r),
      child: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Text(
                context.localizations.attendance,
                style: AppFonts.font24kBlackWeight500Inter,
              )),
          verticalSpace(16),
          CustomDividerWidget(),
          verticalSpace(16),
          WeekHeaderRowWidget(),
          verticalSpace(6),
          StudentAttendanceListWidget(),
        ],
      ),
    );
  }
}
