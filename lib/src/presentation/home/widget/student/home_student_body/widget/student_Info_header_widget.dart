import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';
import 'package:hti_univerity/src/presentation/home/view_model/home_cubit.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../shared_widget/header_container_widget.dart';
import '../../../shared_widget/user_greeting_widget.dart';
class StudentInfoHeaderWidget extends StatelessWidget {
  const StudentInfoHeaderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var homeViewModel = context.read<HomeCubit>();
    return HeaderContainerWidget(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserGreetingWidget(
              isStudent: true,
              userType:
                  homeViewModel.dataHomeEntity?.studentId.toString()  ?? "",
            ),
            verticalSpace(12),
            Text(
              "${context.localizations.name} : ${homeViewModel.dataHomeEntity?.name ?? ""}",
              style: AppFonts.font16kBlackWeight500Inter,
            ),
            Text(
              "${context.localizations.gpa} : ${homeViewModel.dataHomeEntity?.gpa.toString() ?? ""}",
              style: AppFonts.font16kBlackWeight500Inter,
            ),
            Text(
              "${context.localizations.stage} : ${context.localizations.css}",
              style: AppFonts.font16kBlackWeight500Inter,
            ),
            Text(
              "${context.localizations.totalUnits} : ${homeViewModel.dataHomeEntity?.totalUnits.toString() ?? ""}",
              style: AppFonts.font16kBlackWeight500Inter,
            ),
          ],
        ),
      ),
    );
  }
}
