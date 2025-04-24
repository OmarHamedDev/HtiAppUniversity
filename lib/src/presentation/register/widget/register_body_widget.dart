import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/register/view_model/register_action.dart';
import 'package:hti_univerity/src/presentation/register/widget/register_button_submit_widget.dart';
import 'package:hti_univerity/src/presentation/register/widget/register_form_field_widget.dart';
import 'package:hti_univerity/src/presentation/register/widget/register_tab_widget.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../core/utils/widget/prom_pto_widet.dart';
import '../view_model/register_cubit.dart';

class RegisterBodyWidget extends StatefulWidget {
  const RegisterBodyWidget({super.key});

  @override
  State<RegisterBodyWidget> createState() => _RegisterBodyWidgetState();
}

class _RegisterBodyWidgetState extends State<RegisterBodyWidget> with TickerProviderStateMixin {
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
    var registerCubit = context.read<RegisterCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Align(
              alignment: Alignment.center,
              child: Text(
                  textAlign: TextAlign.center,
                  "Sign Up ",
                  style: AppFonts.font37kBlackWeight700Inter),
            ),
             verticalSpace(12),
            RegisterTabWidget(),            verticalSpace(12),
            RegisterFormFieldWidget(),
            verticalSpace(8),
             RegisterButtonSubmitWidget(),
            verticalSpace(10),
            PromPtoWidget(
              text: 'have an account ?',
              textButton: 'Sign in',
              onPressed: () =>registerCubit.doAction(NavigateToLoginScreenAction()),
            ),



          ],
        ),
      ),
    );
  }
}
