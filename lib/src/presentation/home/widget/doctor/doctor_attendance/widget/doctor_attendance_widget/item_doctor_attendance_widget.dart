import 'package:flutter/material.dart';

import '../../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../../core/styles/fonts/app_fonts.dart';

class ItemDoctorAttendanceWidget extends StatelessWidget {
  final String weekName;
  const ItemDoctorAttendanceWidget({super.key, required this.weekName});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(weekName,style: AppFonts.font16kBlackWeight500Inter,),
          const Spacer(),
          Icon(Icons.arrow_forward_ios_outlined,color: AppColors.kBlack,)
        ]);
  }
}
