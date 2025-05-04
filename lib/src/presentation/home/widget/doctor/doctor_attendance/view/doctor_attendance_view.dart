import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/attendance_action.dart';
import '../view_model/attendance_doctor_cubit.dart';
import '../widget/doctor_attendance_widget/doctor_attendance_body_widget.dart';

class DoctorAttendanceView extends StatefulWidget {
  const DoctorAttendanceView({super.key});

  @override
  State<DoctorAttendanceView> createState() => _DoctorAttendanceViewState();
}

class _DoctorAttendanceViewState extends State<DoctorAttendanceView> {
  var doctorAttendanceCubit = getIt<AttendanceDoctorCubit>();
  @override
  void initState() {
    doctorAttendanceCubit.doAction(GetAttendanceAllWeekDoctorAction(
     "1"
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => doctorAttendanceCubit,
      child: BaseScaffold(
          child: Scaffold(
        appBar: AppBar(
          leading: BottomBackWidget(),
        ),
        body: BlocBuilder<AttendanceDoctorCubit, AttendanceDoctorState>(
          builder: (context, state) {
            if (state is GetAttendanceAllWeekDoctorLoadingState) {
              return HandleState.loading();
            }
            if (state is GetAttendanceAllWeekDoctorErrorState) {
              return HandleState.error(state.exception);
            } else {
              return  HandleState.emptyList(
                  child:DoctorAttendanceBodyWidget(),
                  message: "No Attendance Data Available",
                  list: doctorAttendanceCubit?.attendanceWeekDoctor ?? [],);
            }
          },
        ),
      )),
    );
  }
}
