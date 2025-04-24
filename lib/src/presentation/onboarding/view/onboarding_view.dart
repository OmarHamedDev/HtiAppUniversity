import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/config/routes/page_route_name.dart';
import 'package:hti_univerity/dependency_inversion/di.dart';
import '../view_model/onboarding_view_model.dart';
import '../widget/on_boarding_body_widget.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  var onBoardingViewModel = getIt.get<OnboardingViewModel>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => onBoardingViewModel,
      child: BaseScaffold(
        child: SafeArea(
          child: Scaffold(
            body: BlocConsumer<OnboardingViewModel, OnboardingViewModelState>(
              listener: (context, state) {
                if (state is NavigateToLoginScreenState) {
                  _goNextToLoginScreen();
                }
              },
              builder: (context, state) {
                return OnBoardingBodyWidget();
              },
            ),
          ),
        ),
      ),
    );
  }

  void _goNextToLoginScreen() {
    Navigator.pushNamedAndRemoveUntil(context, PageRouteName.login, (route) => false);
  }
}
