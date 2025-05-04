import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/service/convert/handel_data.dart';
import '../../widgets/status_widget/week_dividier_widget.dart';
import '../view_model/event_cubit.dart';
import 'item_event_widget.dart';

class EventNotificationListWidget extends StatelessWidget {
  const EventNotificationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var eventViewModel = context.read<EventCubit>();
    var eventList = eventViewModel.events;
    return ListView.separated(
        itemBuilder: (context, index) {
          return ItemEventWidget(
            title: eventList[index].title,
            description: eventList[index].description,
            createdAt: HandleData.formatDate(
                eventList[index].createdAt.toString()),
          );
        },
        separatorBuilder: (context, index) {
          return WeekDividerWidget();
        },
        itemCount: eventList.length);
  }
}
