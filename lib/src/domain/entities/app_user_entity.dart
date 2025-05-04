class AppUserEntity {
  final int id;
  final String email;
  final String fullName;
  final String role;
  final String? studentIdentifier;
  final String? name;
  final int? gpa;
  final int? totalUnits;
  AppUserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
    this.studentIdentifier,
    this.gpa,
    this.totalUnits,
    required this.fullName,
  });
}
