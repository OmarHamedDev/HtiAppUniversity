import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_cubit.dart';

import '../../../../core/styles/colors/app_colors.dart';
import '../../../../core/styles/fonts/app_fonts.dart';

class RegisterTabWidget extends StatefulWidget {
  const RegisterTabWidget({super.key});

  @override
  State<RegisterTabWidget> createState() => _RegisterTabWidgetState();
}

class _RegisterTabWidgetState extends State<RegisterTabWidget> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var registerViewModel = context.read<RegisterCubit>();
    return BlocBuilder<RegisterCubit, RegisterState>(
  builder: (context, state) {
    return Container(
      height: 39.h,
      width: double.infinity,
      padding: EdgeInsets.zero,
      child: Theme(
        data: Theme.of(context).copyWith(
          tabBarTheme: TabBarTheme(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 8.w,
                style: BorderStyle.solid,
                color: AppColors.kPrimaryOpacity,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
        child: AnimatedBuilder(
          animation: tabController,
          builder: (context, _) {
            return Align(
              alignment: AlignmentDirectional.topCenter,
              child: TabBar(
                controller: tabController,
                labelStyle: AppFonts.font16kBlackWeight400Inter,
                isScrollable: false,

                splashBorderRadius: BorderRadius.zero,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelStyle: AppFonts.font16kBlackWeight400Inter,
                dividerColor: Colors.transparent,
                labelColor: AppColors.kPrimary,
                unselectedLabelColor: AppColors.kBlack,
                labelPadding: EdgeInsets.only(
                  right: tabController.index == 0 ? 0.w : 20.w, // أول عنصر بدون padding، والباقي 20
                  left: 0.w,
                ),
                onTap: (value) => registerViewModel.changeRole( value),
                tabs: registerViewModel.roles.map((e) => Tab(text: e),).toList()
              ),
            );
          },
        ),
      ),
    );
  },
);
  }
}
