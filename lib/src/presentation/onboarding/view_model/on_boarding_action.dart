sealed class OnBoardingAction {}

class NavigateToLoginScreenAction extends OnBoardingAction {}
class ChangeOnBoardingPageAction extends OnBoardingAction {
  final int page;
  ChangeOnBoardingPageAction(this.page);
}
class NextOnBoardingPageAction extends OnBoardingAction {}
class PreviousOnBoardingPageAction extends OnBoardingAction {}
