import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../view_model/on_boarding_action.dart';
import '../view_model/onboarding_view_model.dart';

class SkipAndPreviousRowButtonWidget extends StatelessWidget {
  const SkipAndPreviousRowButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var onBoardingViewModel = context.read<OnboardingViewModel>();
    return BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            onBoardingViewModel.isFirstPage ? Container() : InkWell(
              onTap: ()=> onBoardingViewModel.doAction(action: PreviousOnBoardingPageAction()),
              child: Text("previous", style: AppFonts.font16kBlackWeight400Inter,),
            ),
            InkWell(
              onTap: ()=> onBoardingViewModel.doAction(action: NavigateToLoginScreenAction()),
              child: Text("Skip", style: AppFonts.font16kBlackWeight400Inter,),
            ),
          ],
        );
      },
    );
  }
}
