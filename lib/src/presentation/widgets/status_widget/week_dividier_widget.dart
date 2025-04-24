import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_divider_widget.dart';

class WeekDividerWidget extends StatelessWidget {
  const WeekDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 18.0.h),
      child: CustomDividerWidget(),
    );
  }
}
