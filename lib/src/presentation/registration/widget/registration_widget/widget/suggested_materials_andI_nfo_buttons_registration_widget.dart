import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../view_model/registration_action.dart';
import '../../../view_model/registration_cubit.dart';
import 'custom_button_registration_widget.dart';

class SuggestedMaterialsAndiNfoButtonsRegistrationWidget
    extends StatelessWidget {
  const SuggestedMaterialsAndiNfoButtonsRegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var registrationView = context.read<RegistrationCubit>();
    return Row(
      children: [
        Expanded(
          child: CustomButtonRegistrationWidget(
            text: "View Suggested Materials",
            onPressed: ()async {
              registrationView
                  .buildBodyBodyWidget(BodyWidgetType.tableBody);
              await registrationView.doAction(GetSuggestedCoursesAction(studentId: "4010"));
            },

            color: AppColors.kPrimary,
            textColor: AppColors.kWhite,
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            height: 48.h,
          ),
        ),
        horizontalSpace(8),
        Expanded(
          child: CustomButtonRegistrationWidget(
            text: "Student information",
            onPressed: () => registrationView
                .buildBodyBodyWidget(BodyWidgetType.studentInfo),
            color: Colors.transparent,
            textColor: AppColors.kBlack,
            borderColor: AppColors.kBlack,
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            height: 48.h,
          ),
        ),
      ],
    );
  }
}
