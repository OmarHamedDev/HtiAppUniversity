import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student_body/widget/student_Info_header_widget.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student_body/widget/student_course_list_widget.dart';
import '../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../view_model/home_cubit.dart';
import '../../../../widgets/custom_divider_widget.dart';

class StudentBodyWidget extends StatelessWidget {
  const StudentBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var homeViewModel = context.read<HomeCubit>();
    return Column(
      children: [
        StudentInfoHeaderWidget(),
        verticalSpace(24),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomDividerWidget(),
                  verticalSpace(16),
                  Text(
                    "${context.localizations.recordedMaterials} : ",
                    style: AppFonts.font20kBlackWeight500Inter,
                  ),
                  verticalSpace(16),
                  StudentCourseListWidget(
                    courses:  homeViewModel.dataHomeEntity?.courses ?? [],
                  ),
                ],
              )),
        )

        // Add other widgets here
      ],
    );
  }
}
