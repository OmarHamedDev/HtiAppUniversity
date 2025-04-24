import 'package:flutter/material.dart';

import '../../styles/colors/app_colors.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;
  const BaseScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [AppColors.kBackground,AppColors.kWhite, AppColors.kWhite],
        ),),
      child: child,
    );
  }
}
