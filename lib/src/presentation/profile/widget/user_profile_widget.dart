import 'package:flutter/material.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../widgets/icon_action_app_bar_widget.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: IconActionAppBarWidget(
          width: 42,
          height: 42,
          iconSize: 30,
          padding: 0.0,
          icon: Icons.person_outline),
      title: Text(
        'OmarHamedMakram',
        textAlign: TextAlign.start,
        style: AppFonts.font12kGrayWeight600Inter,
      ),
      subtitle: Text(
        'omar makram 421@gmail.com',
        textAlign: TextAlign.start,
        style: AppFonts.font13kGrayWeight600Inter,
      ),
    );
  }
}
