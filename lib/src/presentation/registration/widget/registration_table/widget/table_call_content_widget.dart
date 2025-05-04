import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableCellContent extends StatelessWidget {
  final String text;
  final bool isHeader;
  final VoidCallback? onTap;

  const TableCellContent({
    super.key,
    required this.text,
    this.isHeader = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: isHeader
            ? Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                textAlign: TextAlign.center,
              )
            : (text == '+'
                ? InkWell(
          onTap: onTap,
          child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12.r,
                      child: const Icon(
                        Icons.add,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                )
                : Text(
                    text,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    softWrap: true,
                  )),
      ),
    );
  }
}
