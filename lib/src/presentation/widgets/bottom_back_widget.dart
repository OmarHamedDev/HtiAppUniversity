import 'package:flutter/material.dart';

import '../../../core/styles/colors/app_colors.dart';

class BottomBackWidget extends StatelessWidget {
  const BottomBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap:() => _onBackButtonPressed(context),
        child: Icon(Icons.arrow_back_ios_new_sharp,color: AppColors.kBlack,));
  }

  _onBackButtonPressed(BuildContext context) {
    if(Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
