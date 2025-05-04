import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/admin/home_admin/widget/admin_body_widget.dart';
import '../../../../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../view_model/home_admin_action.dart';
import '../view_model/home_admin_cubit.dart';

class HomeAdminView extends StatefulWidget {
  const HomeAdminView({super.key});

  @override
  State<HomeAdminView> createState() => _HomeAdminViewState();
}

class _HomeAdminViewState extends State<HomeAdminView> {
  final homeAdminViewModel = getIt<HomeAdminCubit>();

  @override
  void initState() {
    super.initState();
    homeAdminViewModel.doAction(CallGetHomeAdminAction());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: homeAdminViewModel,
      child: BlocBuilder<HomeAdminCubit, HomeAdminState>(
        builder: (context, state) {
          return _handleBlocBuilder(state);
        },
      ),
    );
  }

  Widget _handleBlocBuilder(HomeAdminState state) {
    if (state is HomeAdminLoadingState) {
      return HandleState.loading();
    } else if (state is HomeAdminErrorState) {
      return HandleState.error(state.exception);
    }if(homeAdminViewModel.facultyCountEntity == null ||
        homeAdminViewModel.studentCountEntity == null )
  {
      return HandleState.error(Exception());
    } else if (state is HomeAdminSuccessState) {
      return const AdminBodyWidget();
    }  else if (state is HomeAdminInitial) {
      return const AdminBodyWidget();
    }

    else {
      return const AdminBodyWidget();
    }
  }
}
