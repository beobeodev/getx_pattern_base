import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserModel {
  final String name;
  final String email;

  UserModel({required this.name, required this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
