import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'offered_course_model.freezed.dart';
part 'offered_course_model.g.dart';

@freezed
class OfferedCourseStatus with _$OfferedCourseStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OfferedCourseStatus({
    String? time,
    String? status,
    String? detail,
    List<OfferedCourseModel>? result,
  }) = _OfferedCourseStatus;

  factory OfferedCourseStatus.fromJson(Map<String, Object?> json) =>
      _$OfferedCourseStatusFromJson(json);
}

@freezed
class OfferedCourseModel with _$OfferedCourseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OfferedCourseModel({
    String? id,
    String? course,
    String? department,
    int? semester,
    String? usn,
  }) = _OfferedCourseModel;

  factory OfferedCourseModel.fromJson(Map<String, Object?> json) =>
      _$OfferedCourseModelFromJson(json);

  static Future<List<ListModel>> getListTile() async {
    final http.Response response = await post(
        '''SELECT id, ->course.name AS title, <-department.name AS subtitle FROM offers SPLIT title, subtitle''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<OfferedCourseModel> getDetails(String id) async {
    final http.Response response = await post(
        '''SELECT id, ->course.name AS course, <-department.name AS department, semester, usn FROM $id SPLIT course, department;''');
    return OfferedCourseStatus.fromJson(jsonDecode(response.body)[0])
        .result![0];
  }
}
