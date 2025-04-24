import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';
import 'package:hti_univerity/src/presentation/home/widget/admin/home_admin_body_widget/widget/admin_header_widget.dart';
import 'package:hti_univerity/src/presentation/widgets/status_widget/week_dividier_widget.dart';

import '../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../widgets/custom_divider_widget.dart';

class AdminBodyWidget extends StatelessWidget {
  const AdminBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdminHeaderWidget(),
          verticalSpace(28),
          CustomDividerWidget(),
          verticalSpace(24),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 64,
                  padding: EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFA7A7A7),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Number of Students: : ",
                              style:      TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.60,
                              ),
                            )),

                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("1241414 ",
                              style:      TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.60,
                              ),
                            )),
                      ]
                  ),
                ),
              ),
              horizontalSpace(17),
              Expanded(
                child: Container(
                  height: 64,
                  padding: EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFA7A7A7),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                      children: [
                        Align(
               alignment: Alignment.centerLeft,
                            child: Text("Number of Students: : ",
                            style:      TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.60,
                            ),
                            )),

                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("1241414 ",
                              style:      TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.60,
                              ),
                            )),
                      ]
                  ),
                ),
              ),

            ],
          ),
          WeekDividerWidget(),
          Text(
            "Latest system updates:",
            style: AppFonts.font16kBlackWeight400Inter,
          ),
          verticalSpace(4),
          Text(
            "Three students registered today.",
            style: AppFonts.font12kGrayWeight600Inter,
          ),
          verticalSpace(4),
          Text(
            "Dr. [Name] updated his information.",
            style: AppFonts.font12kGrayWeight600Inter,
          )

        ],
      ),
    );
  }
}
