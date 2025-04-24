class DataHomeEntity {
  final num? studentId ;
  final String? name;
  final num? gpa;
 final num? totalUnits;
  final List<CourseEntity>? courses;
  DataHomeEntity({
    this.studentId,
    this.name,
    this.gpa,
    this.totalUnits,
    this.courses,
  });
}

class CourseEntity {
  final num? id;
  final String? name;
  final String? department;
  CourseEntity({
    this.id,
    this.name,
    this.department,
  });
}
