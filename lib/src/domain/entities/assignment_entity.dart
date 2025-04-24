class AssignmentEntity {
  num assignmentId;
  String title;
  String description;
  String deadline;
  String groupName;
  String weekNumber;
  String courseName;

  AssignmentEntity({
    required this.assignmentId,
    required this.title,
    required this.description,
    required this.deadline,
    required this.groupName,
    required this.weekNumber,
    required this.courseName,
  });
}
