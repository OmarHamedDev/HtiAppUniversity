class RegisteredCourseEntity {
  final int ? courseId;
  final String? courseName;
  final String? groupName;
  final int? units;
  final String? dateRegistered;
  final int? availableSeats;
  final String? dayName;
  final int ? groupId;

  RegisteredCourseEntity({
    this.courseId,
    this.groupId,
    this.courseName,
    this.groupName,
    this.units,
    this.dateRegistered,
    this.availableSeats,
    this.dayName,
  });
}
