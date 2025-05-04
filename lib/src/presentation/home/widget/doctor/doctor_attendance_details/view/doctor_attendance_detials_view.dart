import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../../doctor_attendance/widget/doctor_attendance_title_widget.dart';
import '../view_model/doctor_attendance_details_action.dart';
import '../view_model/doctor_attendance_details_cubit.dart';
import '../widget/doctor_attendance_details_body_widget.dart';

class DoctorAttendanceDetailsView extends StatefulWidget {
  const DoctorAttendanceDetailsView({super.key});

  @override
  State<DoctorAttendanceDetailsView> createState() =>
      _DoctorAttendanceDetailsViewState();
}

class _DoctorAttendanceDetailsViewState
    extends State<DoctorAttendanceDetailsView> {
  var doctorAttendanceDetailsCubit = getIt<DoctorAttendanceDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => doctorAttendanceDetailsCubit
        ..doAction(GetAttendanceDoctorWeekDetailsAction(
          courseId: "10",
          weekId: "1",
        )),
      child: BaseScaffold(
        child: Scaffold(
          appBar: AppBar(
            leading: BottomBackWidget(),
          ),
          body: BlocBuilder<DoctorAttendanceDetailsCubit, DoctorAttendanceDetailsState>(
            builder: (context, state) {
              return _handleState(state);
            },
          ),
        ),
      ),
    );
  }

  Widget _handleState(DoctorAttendanceDetailsState state) {
    if (state is GetAttendanceWeekDetailsLoadingState) {
      return HandleState.loading();
    }
    if (state is GetAttendanceWeekDetailsErrorState) {
      return HandleState.error(state.exception);
    } else {
      return HandleState.emptyList(
        message: "No Attendance Details Available",
        child: DoctorAttendanceDetailsBodyWidget(),
        list: doctorAttendanceDetailsCubit?.attendanceWeekDetails ?? [],
      );
    }
  }
}
