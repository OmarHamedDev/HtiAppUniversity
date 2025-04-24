import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../config/routes/app_page_route_provider.dart';

class RoleBodyWidget {
  static Widget  ? getBody({
    required BuildContext context,
     Widget ?  studentBodyWidget,
    Widget ?  doctorBodyWidget,
    Widget  ? adminBodyWidget,
  }) {
    final appConfigProvider = context.appConfigProvider;

    switch (appConfigProvider.role) {
      case Role.student:
        return studentBodyWidget;
      case Role.faculty:
        return doctorBodyWidget;
      case Role.admin:
        return adminBodyWidget;
      default:
        return const Center(child: CircularProgressIndicator());
    }
  }
}
