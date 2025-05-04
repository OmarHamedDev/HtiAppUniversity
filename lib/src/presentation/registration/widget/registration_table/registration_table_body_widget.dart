import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/src/presentation/registration/widget/registration_table/widget/registration_table_widget.dart';

import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../home/widget/shared_widget/header_container_widget.dart';
import '../../view_model/registration_cubit.dart';

class RegistrationTableBodyWidget extends StatefulWidget {
  const RegistrationTableBodyWidget({super.key});

  @override
  State<RegistrationTableBodyWidget> createState() => _RegistrationTableBodyWidgetState();
}

class _RegistrationTableBodyWidgetState extends State<RegistrationTableBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return HeaderContainerWidget(
      padding: EdgeInsets.all(5.r),
      child:
      // BlocBuilder<RegistrationCubit, RegistrationState>(
      //   builder: (context, state) {
      //     if(state is GetRegisteredCourseLoadingState){
      //       return HandleState.loading();
      //     }else if(state is GetRegisteredCourseErrorState){
      //       return HandleState.error(state.exception);
      //     });
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                child: Text(
                  "Student information",
                  style: AppFonts.font24kBlackWeight500Inter,
                ),
              ),
              verticalSpace(20),
              RegistrationTable(),
              verticalSpace(40),
            ],
          )


    );
  }
}
