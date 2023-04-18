import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
class TeacherStatus with _$TeacherStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TeacherStatus({
    String? time,
    String? status,
    String? detail,
    List<TeacherModel>? result,
  }) = _TeacherStatus;

  factory TeacherStatus.fromJson(Map<String, Object?> json) =>
      _$TeacherStatusFromJson(json);
}

@freezed
class TeacherModel with _$TeacherModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TeacherModel({
    String? id,
    String? name,
    DepartmentModel? department,
    String? designation,
    EmailModel? email,
    String? gender,
    String? bloodGroup,
    PersonalModel? personal,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, Object?> json) =>
      _$TeacherModelFromJson(json);

  static Future<List<TeacherModel?>> getTeacherNames() async {
    final http.Response response =
        await post('''SELECT name, id FROM teacher;''');
    return TeacherStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<TeacherModel> getTeacherDetails(String id) async {
    final http.Response response =
        await post('''SELECT * FROM $id FETCH department;''');
    return TeacherStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }
}

@freezed
class ResultModel with _$ResultModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ResultModel({
    double? cgpa,
    String? grade,
    double? totalCredit,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, Object?> json) =>
      _$ResultModelFromJson(json);
}
