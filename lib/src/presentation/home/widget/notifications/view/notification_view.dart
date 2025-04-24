import 'package:flutter/material.dart';
import 'package:hti_univerity/config/routes/app_page_route_provider.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../widgets/bottom_back_widget.dart';
import '../../../../widgets/icon_action_app_bar_widget.dart';
import '../widget/notification_body_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    var appConfigProvider = context.appConfigProvider;
    return BaseScaffold(
        child: Scaffold(
      appBar: AppBar(
          leading: const BottomBackWidget(),
          actions: [_handleActionAppBar(appConfigProvider.role)]),
      body: NotificationBodyWidget(),
    ));
  }





  Widget _handleActionAppBar(Role role) {
    if (role == Role.faculty || role == Role.admin) {
     return   IconActionAppBarWidget(icon: Icons.add,);
    } else {
      return Text('');
    }
  }
}
