import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_cubit.dart';

import '../../../../widgets/status_widget/week_dividier_widget.dart';
import '../../../view_model/registration_action.dart';
import '../../../view_model/registration_cubit.dart';
import 'course_item_with_delete_registration_widget.dart';

class CoursesRegistrationListWidget extends StatelessWidget {
  const CoursesRegistrationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var registrationViewModel = context.read<RegistrationCubit>();
    final registerList = registrationViewModel.registeredCourses;
    return
      ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: registerList.length,
        separatorBuilder: (context, index) => WeekDividerWidget(),
        itemBuilder: (context, index) =>
            CourseItemWithDeleteRegistrationWidget(
              onPressed: () {
                registrationViewModel.doAction(RemoveRegisteredCourseAction(
                  studentId: "4010",
                  courseId: registerList[index].courseId ?? 1 ,
                ));
              },
              courseName: registerList[index].courseName,
            ),);
  }
}
