import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/doctor_quiz/widget/quiz_form_field_widget.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/click_add_post_button_widget.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../view_model/doctor_quiz_action.dart';
import '../view_model/doctor_quiz_cubit.dart';

class DoctorQuizBodyWidget extends StatelessWidget {
  const DoctorQuizBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var quizCubit = context.read<DoctorQuizCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Quiz",
                  style: AppFonts.font24kBlackWeight500Inter,
                )),
            verticalSpace(16),
            CustomDividerWidget(),
            verticalSpace(20),
            QuizFormFieldWidget(),
            verticalSpace(12),
            ClickButtonWidget(
              onTap: () {
                quizCubit.doAction(AddDoctorQuizAction());
              },
              title: "Add Quiz",
              width: 160.w,
            ),
          ],
        ),
      ),
    );
  }
}
