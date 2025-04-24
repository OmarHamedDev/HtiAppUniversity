import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../../widgets/custom_divider_widget.dart';
import '../../../../../../widgets/status_widget/week_header_row_widget.dart';
import 'doctor_attendance_list_widget.dart';

class DoctorAttendanceBodyWidget extends StatelessWidget {
  const DoctorAttendanceBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
          verticalSpace(10),
          DoctorAttendanceListWidget(),
        ],
      ),
    );
  }
}
