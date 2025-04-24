import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hti_univerity/src/domain/entities/on_boarding_entity.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/styles/images/app_images.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import 'onboarding_Indicator_widget.dart';

class OnboardingItemWidget extends StatelessWidget {
  final OnBoardingEntity onBoardingEntity;
  const OnboardingItemWidget({super.key, required this.onBoardingEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(onBoardingEntity.image,height: 300.h,fit: BoxFit.fill,),
        verticalSpace(16),
        Text(onBoardingEntity.title,style: AppFonts.font24kBlackWeight500Inter,),
        verticalSpace(16),
        Text(
          textAlign: TextAlign.center,
          onBoardingEntity.description,style: AppFonts.font16kBlackWeight400Inter,),
        verticalSpace(24),
        OnboardingIndicatorWidget(),
      ],
    );
  }


}
List<String> images = [
  AppImages.happyStudentOnboarding,
  AppImages.studyOnboarding,
  AppImages.notificationsOnboarding,
];
List<String> titles = [
  "Track your grades",
  "Knowing most of the events",
  "Notification Feature",
];
List<String> descriptions = [
  "You can follow your grades in the material section located in the navbar",
  "You can follow the institute's events through the section page",
  "You can keep track of the dates of the study activities"
];
