import 'package:flutter/material.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';

class SectionTitleProfileWidget extends StatelessWidget {
  final String title;
  const SectionTitleProfileWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(title, style: AppFonts.font16kGrayWeight400Inter),
        if (title.isNotEmpty) verticalSpace(10),
      ],
    );
  }
}
