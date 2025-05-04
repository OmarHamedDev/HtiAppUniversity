import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../../../core/utils/functions/validators/validations.dart';
import '../../../shared_widget/custom_text_form_field_widget.dart';
import '../view_model/doctor_quiz_cubit.dart';

class QuizFormFieldWidget extends StatefulWidget {
  const QuizFormFieldWidget({super.key});

  @override
  State<QuizFormFieldWidget> createState() => _QuizFormFieldWidgetState();
}

class _QuizFormFieldWidgetState extends State<QuizFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    var quizCubit = context.read<DoctorQuizCubit>();
    return Form(
      key: quizCubit.formKey,
      child: Column(
        children: [
          CustomTextFormFieldWidget(
            hintText: "Title Quiz",
            validator: (value) => Validations.validateTextIsEmpty(value),
            controller: quizCubit.titleController,
          ),
          verticalSpace(18),
          CustomTextFormFieldWidget(
            hintText: "Week Number",
            maxLines: 3,
            textInputType: TextInputType.number,
            validator: (value) =>
                Validations.validateTextIsOnlyNumbers(value),
            controller: quizCubit.weekIdController,
          ),
          verticalSpace(18),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Quiz Date : ",
              style: AppFonts.font16kBlackWeight400Inter,
            ),
          ),
          verticalSpace(10),
          InkWell(
            onTap: () async {
              await _selectDate(context, quizCubit);
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                quizCubit.selectDate.substring(0, 10),
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            ),
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
              controller: quizCubit.descriptionController,
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

  Future<void> _selectDate(
      BuildContext context, DoctorQuizCubit quizCubit) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      quizCubit.selectDate = selectedDate.toUtc().toIso8601String();
      setState(() {});
    }
  }
}
