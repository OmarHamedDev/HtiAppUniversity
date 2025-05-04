import 'package:flutter/cupertino.dart';
import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';

class InfoCardWidget extends StatelessWidget {
  final String label;
  final String value;
  const InfoCardWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(label, style: AppFonts.font12kBlackWeight400Inter),
          ),
          SizedBox(height: 4), // 👈 مسافة بسيطة بينهم
          Align(
            alignment: Alignment.centerRight,
            child: Text(value, style: AppFonts.font12kBlackWeight400Inter),
          ),
        ],
      ),
    );
  }
}
