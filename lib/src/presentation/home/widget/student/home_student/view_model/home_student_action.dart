sealed class HomeStudentAction {}
class GetHomeStudentAction extends HomeStudentAction {
  final String id;
  GetHomeStudentAction({required this.id});
}