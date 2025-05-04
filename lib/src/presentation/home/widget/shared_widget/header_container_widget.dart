import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderContainerWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const HeaderContainerWidget({
    this.padding = const EdgeInsets.only(
      left: 20,
      right: 20,
      top: 20,
      bottom: 20,
    ),
    super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: padding,
        decoration: ShapeDecoration(
          color: const Color(0xFFFFD1D1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 5,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: child);
  }
}
