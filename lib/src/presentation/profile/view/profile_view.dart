import 'package:flutter/material.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:hti_univerity/src/presentation/widgets/custom_divider_widget.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../widgets/status_widget/week_dividier_widget.dart';
import '../widget/user_profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Profile'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfileWidget(),
            WeekDividerWidget(),
            Text(
              "Profile Management",
              style: AppFonts.font16kGrayWeight400Inter,
            ),
          ],
        ),
      )
    ));
  }
}
