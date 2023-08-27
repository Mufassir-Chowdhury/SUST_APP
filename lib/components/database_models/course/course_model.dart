import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
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

  static Future<List<ListModel>> getListTile(String? department) async {
    final http.Response response = await post(
        '''SELECT name AS title, department.name AS subtitle, id AS id FROM course WHERE department = $department;''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<CourseModel> delete(String id) async {
    final http.Response response = await post('''delete $id;''');
    return CourseStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<CourseModel> getDetails(String id) async {
    final http.Response response = await post('''SELECT * FROM $id;''');
    return CourseStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<List<ListModel>> getNotTakenCourses(
      String id, String department, int semester, int year) async {
    final http.Response response = await post('''
        select id as subtitle,name as title, id from array::difference(
(select value id from (select value ->(offers where semester = $semester and year = $year)->course from $department))
, 
(select value id from (select value ->(takes where semester=$semester and year = $year)->course from $id))
);      
      ''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<List<ListModel>> takenCourse(
      String id, int semester, int year) async {
    final http.Response response = await post('''
select id as subtitle, name as title, id from (select value ->(takes where semester=$semester and year = $year)->course from $id);
      ''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static void registerCourse(
      String id, int semester, int year, String course) async {
    final http.Response response = await post('''
      relate ${id}->takes->${course} set semester = $semester, year = $year;
      ''');
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
