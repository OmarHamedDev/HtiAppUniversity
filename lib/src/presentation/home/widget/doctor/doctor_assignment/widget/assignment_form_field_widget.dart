import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../../../core/utils/functions/validators/validations.dart';
import '../../../shared_widget/custom_text_form_field_widget.dart';
import '../view_model/doctor_assignment_cubit.dart';

class AssignmentFormFieldWidget extends StatelessWidget {
  const AssignmentFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
  var doctorAssignmentCubit = context.read<DoctorAssignmentCubit>();
    return Form(
      key: doctorAssignmentCubit.formKey,
      child: Column(
        children: [
          CustomTextFormFieldWidget(
            hintText: "Title Assignment",
            validator: (value) => Validations.validateTextIsEmpty(value),
            controller: doctorAssignmentCubit.titleController,
          ),
          verticalSpace(18),
          Row(
            children: [
              Expanded(
                child: CustomTextFormFieldWidget(
                  hintText: "Course Group Id",
                  textInputType: TextInputType.number,
                  maxLines: 3,
                  validator: (value) => Validations.validateTextIsOnlyNumbers(value),
                  controller: doctorAssignmentCubit.courseGroupIdController,
                ),
              ),
              horizontalSpace(20),
              Expanded(
                child: CustomTextFormFieldWidget(
                  textInputType: TextInputType.number,
                  hintText: "Week Number",
                  maxLines: 3,
                  validator: (value) => Validations.validateTextIsOnlyNumbers(value),
                  controller: doctorAssignmentCubit.weekIdController,
                ),
              ),
            ],
          ),
          verticalSpace(18),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 300.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: AppColors.kGrey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextFormField(
              controller: doctorAssignmentCubit.descriptionController,
              validator: (value) => Validations.validateTextIsEmpty(value),
              maxLines: 10,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                hintText: "Description ",
                hintStyle: AppFonts.font16kGrayWeight400Inter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
