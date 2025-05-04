import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_table/widget/table_call_content_widget.dart';

class TableDataRowWidget {
  static TableRow build({required List<String> data ,required Function() onTap}) {
    return TableRow(
      children: data.map((cell) => TableCellContent(text: cell,onTap: onTap,)).toList(),
    );
  }
}
