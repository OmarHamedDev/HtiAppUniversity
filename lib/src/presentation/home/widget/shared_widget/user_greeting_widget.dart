import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/config/routes/page_route_name.dart';

import '../../../../../core/styles/colors/app_colors.dart';
import 'header_container_widget.dart';

class UserGreetingWidget extends StatelessWidget {
  final String? userType;
  final bool isStudent;

  const UserGreetingWidget({super.key, this.userType, this.isStudent = false});

  @override
  Widget build(BuildContext context) {
    return isStudent
        ? _buildUserGreetingStudentWidget(context)
        : _buildUserGreetingDoctorOrAdminWidget(context);
  }

  Widget _buildUserGreetingStudentWidget(BuildContext context) {
    return InkWell(
      onTap: () { _navigateToNotificationScreen(context);},
      child: Row(
        children: [
          Text(
            'Welcome, ${userType ?? "User"}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 1.60,
            ),
          ),
          const Spacer(),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
              shadows: [
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                  spreadRadius: 0,
                )
              ],
            ),
            child: ClipOval(
                child: Icon(
              Icons.notifications_outlined,
              size: 30.sp,
              color: AppColors.kBlack,
            )),
          )
        ],
      ),
    );
  }

  Widget _buildUserGreetingDoctorOrAdminWidget(BuildContext context) {
    return HeaderContainerWidget(
      child: Row(
        children: [
          Text(
            'Welcome, ${userType ?? "User"}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 1.60,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () { _navigateToNotificationScreen(context);},
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: ClipOval(
                  child: Icon(
                Icons.notifications_outlined,
                size: 30.sp,
                color: AppColors.kBlack,
              )),
            ),
          )
        ],
      ),
    );
  }

  void _navigateToNotificationScreen(BuildContext context) {
    print("navigate to notification");
    Navigator.pushNamed(context, PageRouteName.notification);
  }
}
