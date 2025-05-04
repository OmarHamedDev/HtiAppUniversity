// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppUserLocalModelAdapter extends TypeAdapter<AppUserLocalModel> {
  @override
  final int typeId = 2;

  @override
  AppUserLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppUserLocalModel(
      id: fields[0] as int,
      email: fields[1] as String,
      fullName: fields[2] as String,
      studentIdentifier: fields[3] as String?,
      name: fields[4] as String?,
      gpa: fields[5] as int?,
      totalUnits: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AppUserLocalModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.fullName)
      ..writeByte(3)
      ..write(obj.studentIdentifier)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.gpa)
      ..writeByte(6)
      ..write(obj.totalUnits);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppUserLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
