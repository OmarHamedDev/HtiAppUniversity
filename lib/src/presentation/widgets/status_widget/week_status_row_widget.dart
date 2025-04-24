import 'package:flutter/cupertino.dart';
import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../core/utils/functions/spaceing/spaceing.dart';
import 'status_icon_widget.dart';

class WeekStatusRowWidget extends StatelessWidget {
  final String weekTitle;
  final bool lectureStatus;
  final bool sectionStatus;

  const WeekStatusRowWidget({
    super.key,
    required this.weekTitle,
    required this.lectureStatus,
    required this.sectionStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          weekTitle,
          style: AppFonts.font16kBlackWeight500Inter,
        ),
        const Spacer(),
        StatusIconWidget(status: lectureStatus),
        horizontalSpace(50),
        StatusIconWidget(status: sectionStatus),
      ],
    );
  }
}