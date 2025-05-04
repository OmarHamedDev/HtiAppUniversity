import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../widgets/icon_action_app_bar_widget.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appPageRouteProvider = context.appConfigProvider;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: IconActionAppBarWidget(
          width: 42,
          height: 42,
          iconSize: 30,
          padding: 0.0,
          icon: Icons.person_outline),
      title: Text(
     appPageRouteProvider.appUserEntity?.name ?? '',
        textAlign: TextAlign.start,
        style: AppFonts.font12kGrayWeight600Inter,
      ),
      subtitle: Text(
        appPageRouteProvider.appUserEntity?.email ?? '',
        textAlign: TextAlign.start,
        style: AppFonts.font13kGrayWeight600Inter,
      ),
    );
  }
}
