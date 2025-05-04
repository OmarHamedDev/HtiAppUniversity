import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/functions/spaceing/spaceing.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import 'package:hti_univerity/src/presentation/event/view_model/event_cubit.dart';
import '../../../../config/routes/app_page_route_provider.dart';
import '../../../../config/routes/page_route_name.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../dependency_inversion/di.dart';
import '../../widgets/icon_action_app_bar_widget.dart';
import '../view_model/event_action.dart';
import '../widget/event_body_widget.dart';

class EventView extends StatefulWidget {
  const EventView({super.key});

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  var eventView = getIt.get<EventCubit>();

  @override
  void initState() {
    eventView.doAction(GetAllEventAction());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var appPageRouteProvider = context.appConfigProvider;
    return BlocProvider(
      create: (context) => eventView,
      child: BaseScaffold(
          child: Scaffold(
              appBar: AppBar(
                centerTitle: false,
                leading: Text(''),
                leadingWidth: 0,
                actions: [
                  _handleActionAppBar(appPageRouteProvider.role),
                  horizontalSpace(10)
                ],
                title: Text(
                  'Top Events',
                  style: AppFonts.font20kBlackWeight500Inter,
                ),
              ),
              body: BlocBuilder<EventCubit, EventState>(
                  builder: (context, state) {
                return _handleBlocBuilderEventState(state);
              }))),
    );
  }

  Widget _handleBlocBuilderEventState(EventState state) {
    if (state is GetAllEventLoadingState) {
      return HandleState.loading();
    } else if (state is GetAllEventErrorState) {
      return HandleState.error(state.exception);
    } else if (state is GetAllEventSuccessState) {
      return EventBodyWidget();
    } else {
      return HandleState.emptyList(
          child: EventBodyWidget(),
          message: 'No Events Available',
          list: eventView.events);
    }
  }

  Widget _handleActionAppBar(Role role) {
    if (role == Role.faculty || role == Role.admin) {
      return InkWell(
        onTap: () => _navigateToEventPost(),
        child: IconActionAppBarWidget(
          icon: Icons.add,
        ),
      );
    } else {
      return Text('');
    }
  }

  void _navigateToEventPost() {
    Navigator.pushNamed(context, PageRouteName.eventPost).then((value) {
      if (value == null) {
        eventView.doAction(GetAllEventAction());
      }
    });
  }
}
