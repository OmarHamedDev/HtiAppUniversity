import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../../../../config/routes/page_route_name.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../../../../../widgets/item_user_options_widget.dart';

class StudentLookingBodyWidget extends StatelessWidget {
  const StudentLookingBodyWidget({super.key});

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
            onTap: () => _navigateToAttendance(context),
            text: context.localizations.attendance,
          ),
          verticalSpace(16),
          CustomDividerWidget(),
          verticalSpace(30),
          ItemUserOptionsWidget(
            onTap: () => _navigateToAssignment(context),
            text: context.localizations.assignments,
          ),
          verticalSpace(30),
          ItemUserOptionsWidget(
            onTap: () => _navigateToQuiz(context),
            text: "Quiz",
          ),
          verticalSpace(16),
        ],
      ),
    );
  }


  void _navigateToAttendance(BuildContext context) {
   Navigator.pushNamed(context, PageRouteName.studentAttendance);
  }
  void _navigateToAssignment(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.studentAssignment);
  }
  void _navigateToQuiz(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.studentQuiz);
  }
}

