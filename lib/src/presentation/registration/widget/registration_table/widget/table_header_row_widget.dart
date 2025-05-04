import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_table/widget/table_call_content_widget.dart';

class TableHeaderRowWidget {
  static TableRow build() {
    return const TableRow(
      children: [
        TableCellContent(text: 'Addition', isHeader: true),
        TableCellContent(text: 'Material Name', isHeader: true),
        TableCellContent(text: 'Group', isHeader: true),
        TableCellContent(text: 'Days', isHeader: true),
        TableCellContent(text: 'Remaining Places', isHeader: true),
      ],
    );
  }
}