import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/admin/home_admin/view_model/home_admin_cubit.dart';

import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import 'info_card_widget.dart';

class AdminInfoCardWidget extends StatelessWidget {
  const AdminInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var adminHomeViewModel = context.read<HomeAdminCubit>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: InfoCardWidget(
          label: "Number of Faculty  : ",
          value:
              "${adminHomeViewModel.facultyCountEntity?.facultyCount ?? "0"}",
        )),
        horizontalSpace(17),
        Expanded(
            child: InfoCardWidget(
          label: "Number of Students  : ",
          value:
              "${(adminHomeViewModel.studentCountEntity == null || adminHomeViewModel.studentCountEntity!.isEmpty) ? "0" : adminHomeViewModel.studentCountEntity![0]?.studentCount ?? "0"}",
        )),
      ],
    );
  }
}
