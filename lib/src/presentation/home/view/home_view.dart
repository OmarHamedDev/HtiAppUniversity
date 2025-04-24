import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/home/view_model/home_cubit.dart';
import 'package:hti_univerity/src/presentation/widgets/roles_body_widget/role_body_widget.dart';
import '../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../dependency_inversion/di.dart';
import '../view_model/home_action.dart';
import '../widget/admin/home_admin_body_widget/admin_body_widget.dart';
import '../widget/doctor/home_doctor_body/doctor_body_widget.dart';
import '../widget/student/home_student_body/student_body_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var homeViewModel = getIt<HomeCubit>();
  @override
  void initState() {
    homeViewModel.doAction(
        GetHomeStateAction(role: context.appConfigProvider.role, id: '4'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => homeViewModel,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is GetHomeLoadingState) {
            return HandleState.loading();
          } else if (state is GetHomeErrorState) {
            return HandleState.error(state.exception);
          } else {
            return RoleBodyWidget.getBody(
              context: context,
              studentBodyWidget: StudentBodyWidget(),
              doctorBodyWidget: DoctorBodyWidget(),
              adminBodyWidget: AdminBodyWidget(),
            )!;
          }
        },
      ),
    );
  }
}
