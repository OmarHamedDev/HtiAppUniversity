import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/utils/widget/custom_button_widget.dart';
import 'package:hti_univerity/src/presentation/create_event/widget/user_event_widget.dart';
import '../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/styles/colors/app_colors.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../event/view_model/event_action.dart';
import '../view_model/create_event_post_cubit.dart';
import 'event_form_field_widget.dart';
import '../../widgets/click_add_post_button_widget.dart';

class AddEventBodyWidget extends StatelessWidget {
  const AddEventBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var createEventPostCubit = context.read<CreateEventPostCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserEventWidget(),
            verticalSpace(8),
            EventFormFieldWidget(),
            verticalSpace(20),
            ClickButtonWidget(
              onTap: () => createEventPostCubit.doAction(GetAllEventAction()),
              title: "Add Event",
              width: 120.w,
            ),
          ],
        ),
      ),
    );
  }
}
