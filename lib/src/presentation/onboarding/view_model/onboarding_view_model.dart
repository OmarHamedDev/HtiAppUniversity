import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/styles/images/app_images.dart';
import '../../../domain/entities/on_boarding_entity.dart';
import 'on_boarding_action.dart';

part 'onboarding_view_model_state.dart';

@injectable
class OnboardingViewModel extends Cubit<OnboardingViewModelState> {
  OnboardingViewModel() : super(OnboardingViewModelInitial());

  final List<OnBoardingEntity> _onboardingList = [
    OnBoardingEntity(
      title: "Track your grades",
      description:
          "You can follow your grades in the material section located in the navbar",
      image: AppImages.happyStudentOnboarding,
    ),
    OnBoardingEntity(
      title: "Knowing most of the events",
      description:
          "You can follow the institute's events through the section page",
      image: AppImages.studyOnboarding,
    ),
    OnBoardingEntity(
      title: "Notification Feature",
      description: "You can keep track of the dates of the study activities",
      image: AppImages.notificationsOnboarding,
    ),
  ];
  List<OnBoardingEntity> get onboardingList => _onboardingList;
  int _currentIndex = 0;
  String _textButton = "Next";
  final PageController pageController = PageController();
  int get currentIndex => _currentIndex;
  String get textButton => _textButton;
  bool get isLastPage => _currentIndex == _onboardingList.length - 1;
  bool get isFirstPage => _currentIndex == 0;
  void _updateButtonLabel() {
    _textButton = isLastPage ? "Get Started" : "Next";
  }

  void _nextPageView() {
    if (!isLastPage) {
      _currentIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _goNextToLoginPage();
    }
    _updateButtonLabel();
    emit(OnboardingViewModelNextState());
  }

  void _backPageView() {
    if (!isFirstPage) {
      _currentIndex--;
      pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
      );
    }
    _updateButtonLabel();
    emit(OnboardingViewModelNextState());
  }

  void _changePage(int index) {
    _currentIndex = index;
    _updateButtonLabel();
    emit(OnboardingViewModelNextState());
  }

  void _goNextToLoginPage() {
    emit(NavigateToLoginScreenState());
  }

  Future<void> doAction({
    required OnBoardingAction action,
  }) async {
    if (action is NextOnBoardingPageAction) {
      _nextPageView();
    } else if (action is PreviousOnBoardingPageAction) {
      _backPageView();
    } else if (action is ChangeOnBoardingPageAction) {
      _changePage(action.page);
    } else if (action is NavigateToLoginScreenAction) {
      _goNextToLoginPage();
    }
  }
}
