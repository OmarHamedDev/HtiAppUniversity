import 'package:flutter/cupertino.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';

class WeekHeaderRowAttendanceDetailsWidget extends StatelessWidget {
  const WeekHeaderRowAttendanceDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            "Student Name",
            style: AppFonts.font16kBlackWeight500Inter,
          ),
          const Spacer(),
          Text(
            "Lecture",
            style: AppFonts.font16kBlackWeight500Inter,
          ),
          horizontalSpace(50),
        ],
      ),
    );
  }
}
