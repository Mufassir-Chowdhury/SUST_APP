import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseStatus with _$CourseStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CourseStatus({
    String? time,
    String? status,
    String? detail,
    List<CourseModel>? result,
  }) = _CourseStatus;

  factory CourseStatus.fromJson(Map<String, Object?> json) =>
      _$CourseStatusFromJson(json);
}

@freezed
class CourseModel with _$CourseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CourseModel({
    String? id,
    double? credit,
    String? name,
    DepartmentModel? department,
    String? type,
    List<SyllabusModel>? syllabus,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, Object?> json) =>
      _$CourseModelFromJson(json);

  static Future<List<ListModel>> getListTile() async {
    final http.Response response = await post(
        '''SELECT name AS title, department.name AS subtitle, id AS id FROM course;''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<CourseModel> getDetails(String id) async {
    final http.Response response =
        await post('''SELECT * FROM $id FETCH department;''');
    return CourseStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }
}

@freezed
class SyllabusModel with _$SyllabusModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SyllabusModel({
    String? title,
    List<String>? topics,
  }) = _SyllabusModel;

  factory SyllabusModel.fromJson(Map<String, Object?> json) =>
      _$SyllabusModelFromJson(json);
}
