import 'package:flutter/material.dart';
import 'package:hti_univerity/core/utils/functions/spaceing/spaceing.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../config/routes/app_page_route_provider.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../widgets/icon_action_app_bar_widget.dart';
import '../widget/event_body_widget.dart';

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [_handleActionAppBar(Role.admin),horizontalSpace(10)],
        title: Text('Top Events',style: AppFonts.font20kBlackWeight500Inter,),
      ),
      body: EventBodyWidget()
      
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
