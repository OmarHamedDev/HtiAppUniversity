import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return      Container(
      width: double.infinity,
      height: 2,
      decoration: BoxDecoration(color: const Color(0xFFD9D9D9)),
    );
  }
}
