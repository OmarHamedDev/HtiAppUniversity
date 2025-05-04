import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/home_doctor/widget/doctor_body_widget.dart';

import '../../../../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../view_model/home_doctor_action.dart';
import '../view_model/home_doctor_cubit.dart';

class HomeDoctorView extends StatefulWidget {
  const HomeDoctorView({super.key});

  @override
  State<HomeDoctorView> createState() => _HomeDoctorViewState();
}

class _HomeDoctorViewState extends State<HomeDoctorView> {
  var homeDoctorCubit = getIt<HomeDoctorCubit>();
  @override
  void initState() {
    homeDoctorCubit.doAction(GetHomeDoctorAction(id: "1"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeDoctorCubit,
      child: BlocBuilder<HomeDoctorCubit, HomeDoctorState>(
        builder: (context, state) {
          if (state is GetHomeDoctorLoadingState) {
            return HandleState.loading();
          }
          if (state is GetHomeDoctorErrorState) {
            return HandleState.error(state.exception);
          } else {
            return DoctorBodyWidget();
          }
        },
      ),
    );
  }
}
