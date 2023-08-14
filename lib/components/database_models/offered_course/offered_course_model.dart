import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
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
    int? year,
  }) = _OfferedCourseModel;

  factory OfferedCourseModel.fromJson(Map<String, Object?> json) =>
      _$OfferedCourseModelFromJson(json);

  static Future<List<ListModel>> getListTile(String? department) async {
    final http.Response response = await post(
        '''SELECT id, ->course.name AS title, <-department.name AS subtitle FROM offers SPLIT title, subtitle WHERE <-department = $department''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<OfferedCourseModel> getDetails(String id) async {
    final http.Response response = await post(
        '''SELECT id, ->course.name AS course, <-department.name AS department, semester, year FROM $id SPLIT course, department;''');
    return OfferedCourseStatus.fromJson(jsonDecode(response.body)[0])
        .result![0];
  }

  static Future<String> create(
      OfferedCourseModel offeredCourse, String? teacher) async {
    final http.Response response = await post(
        '''RELATE ${offeredCourse.department}->offers->${offeredCourse.course} CONTENT {semester: ${offeredCourse.semester}, year: ${offeredCourse.year}};''');
    OfferedCourseStatus status =
        OfferedCourseStatus.fromJson(jsonDecode(response.body)[0]);
    if (status.status == 'OK') {
      if (teacher != null) {
        final http.Response response = await post(
            '''RELATE $teacher->teaches->${status.result![0].id};''');
        status = OfferedCourseStatus.fromJson(jsonDecode(response.body)[0]);
      }
    }
    if (status.status == 'ERR') {
      if (status.detail!.contains('Database record') &&
          status.detail!.contains('already exists')) {
        throw 'Department letter code already exists';
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
