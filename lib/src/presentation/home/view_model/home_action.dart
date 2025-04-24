import '../../../../config/routes/app_page_route_provider.dart';

sealed class HomeAction {}
class GetHomeStateAction extends HomeAction {
  final String id;
  final Role role;
  GetHomeStateAction({ required this.role ,required this.id});
}