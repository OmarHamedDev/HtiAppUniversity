import 'package:flutter/material.dart';
import 'package:hti_univerity/config/routes/page_route_name.dart';
import 'package:hti_univerity/core/extension/extension.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../../domain/entities/home_entity.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../../../../../widgets/item_user_options_widget.dart';

class DoctorLookingBodyWidget extends StatelessWidget {
  const DoctorLookingBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              context.localizations.whatAreYouLookingFor,
              style: AppFonts.font24kBlackWeight500Inter,
            ),
          ),
          verticalSpace(16),
          CustomDividerWidget(),
          verticalSpace(25),
          ItemUserOptionsWidget(
            onTap: () => _navigateToAttendanceDoctor(context, CourseEntity()),
            text: context.localizations.attendance,
          ),
          verticalSpace(16),
          CustomDividerWidget(),
          verticalSpace(30),
          ItemUserOptionsWidget(
            onTap: ()=> _navigateToAssignmentDoctor(context, CourseEntity()),
            text: context.localizations.assignments,
          ),
          verticalSpace(30),
          ItemUserOptionsWidget(
            onTap: ()=> _navigateToQuizDoctor(context, CourseEntity()),
            text:"Quizzes",
          ),
          verticalSpace(16),
        ],
      ),
    );
  }


  void _navigateToAttendanceDoctor(BuildContext context, CourseEntity course) {
    Navigator.pushNamed(context, PageRouteName.doctorAttendance);
  }
  void _navigateToAssignmentDoctor(BuildContext context, CourseEntity course) {
    Navigator.pushNamed(context, PageRouteName.doctorAssignment);
  }
  void _navigateToQuizDoctor(BuildContext context, CourseEntity course) {
    Navigator.pushNamed(context, PageRouteName.doctorQuiz);
  }
}
