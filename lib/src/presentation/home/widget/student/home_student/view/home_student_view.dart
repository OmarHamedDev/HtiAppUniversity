import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student/widget/student_body_widget.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student/view_model/home_student_cubit.dart';

import '../../../../../../../dependency_inversion/di.dart';
import '../view_model/home_student_action.dart';

class HomeStudentView extends StatefulWidget {
  const HomeStudentView({super.key});

  @override
  State<HomeStudentView> createState() => _HomeStudentViewState();
}

class _HomeStudentViewState extends State<HomeStudentView> {
  @override
  void initState() {
    studentViewModel.doAction(GetHomeStudentAction(
      id: context.appConfigProvider?.appUserEntity?.id.toString() ?? "",
    ));
    super.initState();
  }

  var studentViewModel = getIt<HomeStudentCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => studentViewModel,
      child: BlocBuilder<HomeStudentCubit, HomeStudentState>(
        builder: (context, state) {
          return _handleBlocBuilder(context, state);
        },
      ),
    );
  }

  Widget _handleBlocBuilder(BuildContext context, HomeStudentState state) {
    if (state is GetHomeStudentLoadingState) {
      return HandleState.loading();
    } else if (state is GetHomeStudentErrorState) {
      return HandleState.error(state.exception);
    } else {
      return _buildSuccessState();
    }
  }

  Widget _buildSuccessState() {
    if (studentViewModel.dataHomeEntity == null) {
      return HandleState.empty(message: "No Data Available");
    } else {
      return StudentBodyWidget();
    }
  }
}
