import 'package:flutter/material.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';

class DoctorAssignmentTitleWidget extends StatelessWidget {
  const DoctorAssignmentTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Text("Week Number",style: AppFonts.font16kBlackWeight500Inter,),
        const Spacer(),
        Text("Type of Assignment",style: AppFonts.font16kBlackWeight500Inter,),
      ],
    );
  }
}
