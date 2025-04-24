import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';
import 'package:hti_univerity/core/utils/functions/spaceing/spaceing.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/home_doctor_body/widget/doctor_course_list_widget.dart';
import '../../../../widgets/custom_divider_widget.dart';
import '../../../view_model/home_cubit.dart';
import 'widget/doctor_header_widget.dart';

class DoctorBodyWidget extends StatelessWidget {
  const DoctorBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var homeViewModel = context.read<HomeCubit>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DoctorHeaderWidget(),
          verticalSpace(28),
          CustomDividerWidget(),
          verticalSpace(24),
          Text(
            "${context.localizations.subjectsTaught} : ",
            style: AppFonts.font20kBlackWeight500Inter,
          ),
          verticalSpace(16),
          DoctorCourseListWidget(),

        ],
      ),
    );
  }
}
