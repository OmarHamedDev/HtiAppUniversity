import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/section/view_model/section_cubit.dart';
import '../../../../core/styles/colors/app_colors.dart';
import '../../../../core/styles/images/app_images.dart';


class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var sectionCubit = context.read<SectionCubit>();
    int currentIndex = sectionCubit.currentIndex;
    return   BlocBuilder<SectionCubit, SectionState>(
      builder: (context, state) {
      return Container(
      height: kBottomNavigationBarHeight + 25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0x3F000000),
            blurRadius: 6,
            offset: const Offset(0, -1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: sectionCubit.currentIndex,
        onTap: (index) => sectionCubit.changeOnTabBottomSheet(index),
        selectedItemColor: AppColors.kPrimary,
        selectedIconTheme: IconThemeData(
          color: AppColors.kPrimary,
          size: 30.sp,
        ),
        unselectedItemColor: AppColors.kBlack,
        unselectedIconTheme: IconThemeData(
          color: AppColors.kBlack,
          size: 28.sp,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 33.sp,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.eventsIcon,
              width: 25.w,
              height: 25.h,
              color: currentIndex == 1 ? AppColors.kPrimary : AppColors.kBlack,
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.registrationIcon,
              width: 25.w,
              height: 25.h,
              color: currentIndex == 2 ? AppColors.kPrimary : AppColors.kBlack,
            ),
            label: 'Registration',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.profileIcon,
              width: 25.w,
              height: 25.h,
              color: currentIndex == 3 ? AppColors.kPrimary : AppColors.kBlack,
            ),
            label: context.localizations.profile,
          ),
        ],
      ),
    );
  },
);
  }
}
