import 'package:flutter/material.dart';
import 'package:hti_univerity/core/extension/extension.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import 'quiz_student_list_widget.dart';

class QuizStudentBodyWidget extends StatelessWidget {
  const QuizStudentBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Text("Quizzes",style: AppFonts.font24kBlackWeight500Inter,)),
          verticalSpace(16),
          CustomDividerWidget(),
          verticalSpace(16),
          Row(
            children: [
              Text("Quiz Number",style: AppFonts.font16kBlackWeight500Inter,),
              const Spacer(),
              Text("Type of Quiz",style: AppFonts.font16kBlackWeight500Inter,),
            ],
          ),
          verticalSpace(16),
          QuizStudentListWidget(),
        ],
      ),
    );
  }
}
