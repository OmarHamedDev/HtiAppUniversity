import 'package:hive/hive.dart';

part 'app_user_local_model.g.dart';

@HiveType(typeId: 2)
class AppUserLocalModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String fullName;
  @HiveField(3)
  final String? studentIdentifier;
  @HiveField(4)
  final String? name;
  @HiveField(5)
  final int? gpa;
  @HiveField(6)
  final int? totalUnits;
  AppUserLocalModel({
    required this.id,
    required this.email,
    required this.fullName,
    this.studentIdentifier,
    this.name,
    this.gpa,
    this.totalUnits,
  });
}

