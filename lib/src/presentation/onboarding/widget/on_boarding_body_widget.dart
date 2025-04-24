import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/onboarding/widget/skip_and_previous_row_button_widget.dart';

import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/widget/custom_button_widget.dart';
import '../view_model/on_boarding_action.dart';
import '../view_model/onboarding_view_model.dart';
import 'onboarding_Item_widget.dart';

class OnBoardingBodyWidget extends StatelessWidget {
  const OnBoardingBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var onBoardingViewModel = context.read<OnboardingViewModel>();
    return BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
               top: 24.0.h,
              left: 16.0.w,
              right: 16.0.w, bottom: 20.0.h),
          child: PageView.builder(
            itemCount: images.length,
            controller: onBoardingViewModel.pageController,
            onPageChanged: (index) => onBoardingViewModel.doAction(
              action: ChangeOnBoardingPageAction(index),
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SkipAndPreviousRowButtonWidget(),
                  verticalSpace(55),
                  OnboardingItemWidget(
                      onBoardingEntity:
                          onBoardingViewModel.onboardingList[index]),
                  verticalSpace(24),
                  CustomButtonWidget(
                    text: onBoardingViewModel.textButton,
                    onPressed: () => onBoardingViewModel.doAction(
                        action: NextOnBoardingPageAction()),
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
