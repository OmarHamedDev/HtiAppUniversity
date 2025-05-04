import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/home/widget/admin/home_admin/widget/upcoming_event_widget.dart';
import 'package:hti_univerity/src/presentation/widgets/status_widget/week_dividier_widget.dart';

import '../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import 'action_buttons_row_item_widget.dart';
import 'admin_header_widget.dart';
import 'admin_info_card_widget.dart';
import 'admin_quick_button_widget.dart';
import 'info_card_widget.dart';
import 'notifications_list_tile_admin_widget.dart';

class AdminBodyWidget extends StatelessWidget {
  const AdminBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AdminHeaderWidget(),
            verticalSpace(28),
            CustomDividerWidget(),
            verticalSpace(24),
            AdminInfoCardWidget(),
            WeekDividerWidget(),
            NotificationsListTileAdminWidget(),
            WeekDividerWidget(),
            AdminQuickButtonWidget(),

          ],
        ),
      ),
    );
  }
}
