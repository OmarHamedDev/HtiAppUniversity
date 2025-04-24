import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/styles/colors/app_colors.dart';
import '../view_model/onboarding_view_model.dart';

class OnboardingIndicatorWidget extends StatelessWidget {
  const OnboardingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var onBoardingViewModel = context.read<OnboardingViewModel>();
    return BlocBuilder<OnboardingViewModel, OnboardingViewModelState>(
      builder: (context, state) {
        return SmoothPageIndicator(
          controller: onBoardingViewModel.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotColor: AppColors.kGrey,
            activeDotColor: AppColors.kPrimary,
            dotHeight: 8.h,
            dotWidth: 6.w,
            spacing: 5.w,
            expansionFactor: 4,
            strokeWidth: 1.w,

          ),
        );
      },
    );
  }
}
