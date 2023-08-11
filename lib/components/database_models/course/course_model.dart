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
    String? department,
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
    final http.Response response = await post('''SELECT * FROM $id;''');
    return CourseStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<String> create(CourseModel course) async {
    final http.Response response = await post(
        '''CREATE course:${course.id} CONTENT ${jsonEncode(course.toJson()).toString()}''');

    CourseStatus status = CourseStatus.fromJson(jsonDecode(response.body)[0]);
    if (status.status == 'ERR') {
      if (status.detail!.contains('Database record') &&
          status.detail!.contains('already exists')) {
        throw 'Course already exists';
      } else if (status.detail!
          .contains('Database index `minor_course_code` already contains')) {
        throw 'Minor course code already exists';
      } else if (status.detail!
          .contains('Database index `name` already contains')) {
        throw 'Department name already exists';
      } else if (status.detail!
          .contains('Database index `code` already contains')) {
        throw 'Department code already exists';
      }
    }
    return status.status!;
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
