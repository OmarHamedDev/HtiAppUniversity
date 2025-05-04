import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/styles/colors/app_colors.dart';
import 'package:hti_univerity/core/utils/functions/validators/validations.dart';

import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../view_model/create_event_post_cubit.dart';

class EventFormFieldWidget extends StatelessWidget {
  const EventFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var createEventPostCubit = context.read<CreateEventPostCubit>();
    return Form(
      key: createEventPostCubit.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: createEventPostCubit.titleController,
            validator: (value) => Validations.validateTextIsEmpty(value),
            maxLines: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.kGrey,
                  width: 1,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              hintText: "Title",
              hintStyle: AppFonts.font16kGrayWeight400Inter,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.kGrey,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.kGrey,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.kRed,
                  width: 1,
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
              controller: createEventPostCubit.descriptionController,
              validator: (value) => Validations.validateTextIsEmpty(value),
              maxLines: 10,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                hintText: "What’s on your mind? ",
                hintStyle: AppFonts.font16kGrayWeight400Inter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
