import 'package:flutter/material.dart';

import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../core/utils/functions/spaceing/spaceing.dart';

class WeeklyAssignmentWidget extends StatelessWidget {
  final String type;
  final String date;
  final String weekNumber;
  final String courseName;
   const WeeklyAssignmentWidget({
     super.key,
     required this.type,
     required this.date,
     required this.weekNumber,
     required this.courseName,
   });
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Text("week $weekNumber",style:  AppFonts.font16kBlackWeight400Inter,),
          horizontalSpace(30),
          Expanded(
            child: Text(
              "You have a $type in $courseName on $date. Prepare well!",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style:  AppFonts.font16kBlackWeight400Inter,),                       ),


        ]
    );
  }
}





