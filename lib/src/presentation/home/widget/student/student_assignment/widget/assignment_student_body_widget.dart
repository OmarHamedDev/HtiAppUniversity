import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import 'assignment_student_list_widget.dart';

class AssignmentStudentBodyWidget extends StatelessWidget {
  const AssignmentStudentBodyWidget({super.key});

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
          Row(
            children: [
              Text("Week Number",style: AppFonts.font16kBlackWeight500Inter,),
              const Spacer(),
              Text("Type of Assignment",style: AppFonts.font16kBlackWeight500Inter,),
            ],
          ),
          verticalSpace(16),
          AssignmentStudentListWidget(),
        ],
      ),
    );
  }
}
