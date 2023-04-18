import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

// TODO use unions

// @freezed
// class Status with _$Status {
//   @JsonSerializable(fieldRename: FieldRename.snake)
//   const factory Status.department({
//     String? time,
//     String? status,
//     String? detail,
//     List<DepartmentModel>? result,
//   }) = _DepartmentStatus;
//   @JsonSerializable(fieldRename: FieldRename.snake)
//   const factory Status.student({
//     String? time,
//     String? status,
//     String? detail,
//     List<StudentModel>? result,
//   }) = _StudentStatus;
//   // const factory Status({
//   //   String? time,
//   //   String? status,
//   //   String? detail,
//   //   List<Model>? result,
//   // }) = _Status;

//   factory Status.fromJson(Map<String, Object?> json) => _$StatusFromJson(json);
// }

@freezed
class EmailModel with _$EmailModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EmailModel({
    String? personal,
    String? academic,
  }) = _EmailModel;

  factory EmailModel.fromJson(Map<String, Object?> json) =>
      _$EmailModelFromJson(json);
}

@freezed
class PersonalModel with _$PersonalModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PersonalModel({
    String? father,
    String? mother,
    String? birthday,
    int? phone,
    String? hometown,
  }) = _PersonalModel;

  factory PersonalModel.fromJson(Map<String, Object?> json) =>
      _$PersonalModelFromJson(json);
}
