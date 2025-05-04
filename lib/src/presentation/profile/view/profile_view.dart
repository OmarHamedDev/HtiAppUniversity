import 'package:flutter/material.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../widget/profile_body_widget.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child:ProfileBodyWidget(),
    );
  }
}
