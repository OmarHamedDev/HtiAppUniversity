import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../view_model/home_admin_cubit.dart';

class NotificationsListTileAdminWidget extends StatelessWidget {
  const NotificationsListTileAdminWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var adminHomeViewModel = context.read<HomeAdminCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Latest system updates:",
          style: AppFonts.font16kBlackWeight400Inter,
        ),
        verticalSpace(4),
        Text(
          " . Three students (${adminHomeViewModel.adminNotificationCount?.count ?? "`"}) registered today.",
          style: AppFonts.font12kGrayWeight600Inter,
        ),
        verticalSpace(4),
        Text(
          " . Dr. [Name] updated his information.",
          style: AppFonts.font12kGrayWeight600Inter,
        ),
      ],
    );
  }
}
