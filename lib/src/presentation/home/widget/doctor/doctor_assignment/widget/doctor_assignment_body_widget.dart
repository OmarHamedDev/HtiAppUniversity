import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/click_add_post_button_widget.dart';
import '../../../../../widgets/custom_divider_widget.dart';
import '../view_model/doctor_assignment_action.dart';
import '../view_model/doctor_assignment_cubit.dart';
import 'assignment_form_field_widget.dart';

class DoctorAssignmentBodyWidget extends StatelessWidget {
  const DoctorAssignmentBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var doctorAssignmentCubit = context.read<DoctorAssignmentCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  context.localizations.assignments,
                  style: AppFonts.font24kBlackWeight500Inter,
                )),
            verticalSpace(16),
            CustomDividerWidget(),
            verticalSpace(20),
            AssignmentFormFieldWidget(),
            verticalSpace(12),
            ClickButtonWidget(
              onTap: () =>
                  doctorAssignmentCubit.doAction(AddDoctorAssignmentAction()),
              title: "Add Assignment",
              width: 160.w,
            ),
          ],
        ),
      ),
    );
  }
}
