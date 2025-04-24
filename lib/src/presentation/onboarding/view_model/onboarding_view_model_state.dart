part of 'onboarding_view_model.dart';
sealed class OnboardingViewModelState {}
final class OnboardingViewModelInitial extends OnboardingViewModelState {}
class OnboardingViewModelNextState extends OnboardingViewModelState {}
class NavigateToLoginScreenState extends OnboardingViewModelState {}