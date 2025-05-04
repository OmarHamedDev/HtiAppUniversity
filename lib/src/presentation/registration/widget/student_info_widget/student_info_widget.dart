import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';

import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../home/widget/shared_widget/header_container_widget.dart';
import '../../../widgets/custom_divider_widget.dart';

class StudentInfoWidget extends StatelessWidget {
  const StudentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appConfigProvider = context.appConfigProvider;
    return HeaderContainerWidget(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                child: Text(
                  "Student information",
                  style: AppFonts.font24kBlackWeight500Inter,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomDividerWidget()),

              Text(
                "${context.localizations.name} : ${appConfigProvider.appUserEntity?.name}",
                style: AppFonts.font16kBlackWeight500Inter,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomDividerWidget()),
              Text(
                "${context.localizations.gpa} : ${appConfigProvider.appUserEntity?.gpa ?? 0}",
                style: AppFonts.font16kBlackWeight500Inter,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomDividerWidget()),

              Text(
                "${context.localizations.stage} : ${context.localizations.css}",
                style: AppFonts.font16kBlackWeight500Inter,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomDividerWidget()),

              Text(
                "${context.localizations.totalUnits} : ? ....",
                style: AppFonts.font16kBlackWeight500Inter,
              ),
              verticalSpace(40),
            ]));
  }
}
