import 'package:flutter/material.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';

class UpcomingEventWidget extends StatelessWidget {
  const UpcomingEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Quick Buttons",
          style: AppFonts.font16kBlackWeight400Inter,
        ),
        verticalSpace(16),
        Text(
          "The practical exam for the second semester begins on Saturday 4/26.",
          style: AppFonts.font10kBlackWeight400Inter,
        ),
        verticalSpace(4),
        Text(
          "The practical exam for the second semester begins on Saturday 4/26.",
          style: AppFonts.font10kBlackWeight400Inter,

        ),
        verticalSpace(4),
        Text(
          "The practical exam for the second semester begins on Saturday 4/26.",
          style: AppFonts.font10kBlackWeight400Inter,

        ),
        ]

    );
  }
}
