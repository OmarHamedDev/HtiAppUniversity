import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import 'doctor_assignment_list_widget.dart';
import 'doctor_assignment_title_widget.dart';

class DoctorAssignmentBodyWidget extends StatelessWidget {
  const DoctorAssignmentBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Text(context.localizations.assignments,style: AppFonts.font24kBlackWeight500Inter,)),
          verticalSpace(16),
          CustomDividerWidget(),
          verticalSpace(16),
          DoctorAssignmentTitleWidget(),
          verticalSpace(16),
          DoctorAssignmentListWidget(),
        ],
      ),
    );
  }
}
