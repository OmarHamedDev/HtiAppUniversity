import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student/view_model/home_student_cubit.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student/widget/student_Info_header_widget.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/home_student/widget/student_course_list_widget.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';

class StudentBodyWidget extends StatelessWidget {
  const StudentBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var homeStudentViewModel = context.read<HomeStudentCubit>();
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
                  HandleState.emptyList(
                    child:  StudentCourseListWidget(
                      courses: homeStudentViewModel.dataHomeEntity?.courses ?? [],
                    ),
                    list: homeStudentViewModel.dataHomeEntity?.courses ?? [],
                    message: "No Courses Available",
                  ),

                ],
              )),
        )

        // Add other widgets here
      ],
    );
  }
}
