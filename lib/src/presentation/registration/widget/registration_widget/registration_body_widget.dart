import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/src/presentation/registration/view_model/registration_cubit.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_widget/widget/suggested_materials_andI_nfo_buttons_registration_widget.dart';

import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../widgets/status_widget/week_dividier_widget.dart';
import 'widget/courses_registration_List_widget.dart';

class RegistrationBodyWidget extends StatelessWidget {
  const RegistrationBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var registrationViewModel = context.read<RegistrationCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.h),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Registration",
                style: AppFonts.font24kBlackWeight500Inter,
              ),
            ),
            verticalSpace(33),
            SuggestedMaterialsAndiNfoButtonsRegistrationWidget(),
            verticalSpace(16),
            WeekDividerWidget(),
            Text(
              "${context.localizations.recordedMaterials} : ",
              style: AppFonts.font20kBlackWeight500Inter,
            ),
            verticalSpace(24),
            Expanded(
              child: HandleState.emptyList(
                child: CoursesRegistrationListWidget(),
                list: registrationViewModel.registeredCourses,
                message: "No courses registered yet",
              ),
            )
          ]),
    );
  }
}
