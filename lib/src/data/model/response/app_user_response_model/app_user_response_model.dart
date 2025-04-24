import 'package:json_annotation/json_annotation.dart';

part 'app_user_response_model.g.dart';

@JsonSerializable()
class AppUserResponseModel {
  @JsonKey(name: "token")
  final String? token;
  @JsonKey(name: "user")
  final User? user;

  AppUserResponseModel ({
    this.token,
    this.user,
  });

  factory AppUserResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AppUserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppUserResponseModelToJson(this);
  }
}

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "role")
  final String? role;

  User ({
    this.id,
    this.name,
    this.email,
    this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserToJson(this);
  }
}


