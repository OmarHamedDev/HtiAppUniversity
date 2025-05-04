import 'package:flutter/cupertino.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/status_widget/status_icon_widget.dart';

class ItemWeekStatusAttendanceDoctorDetailsWidget extends StatelessWidget {
  final String weekTitle;
  final bool lectureStatus;

  const ItemWeekStatusAttendanceDoctorDetailsWidget({
    super.key,
    required this.weekTitle,
    required this.lectureStatus,
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
        // StatusIconWidget(status: sectionStatus),
      ],
    );
  }
}