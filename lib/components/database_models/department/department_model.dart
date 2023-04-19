import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentStatus with _$DepartmentStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DepartmentStatus({
    String? time,
    String? status,
    String? detail,
    List<DepartmentModel>? result,
  }) = _DepartmentStatus;

  factory DepartmentStatus.fromJson(Map<String, Object?> json) =>
      _$DepartmentStatusFromJson(json);
}

@freezed
class DepartmentModel with _$DepartmentModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DepartmentModel({
    int? code,
    int? floor,
    String? id,
    String? letterCode,
    String? name,
    String? building,
    String? minorCourseCode,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, Object?> json) =>
      _$DepartmentModelFromJson(json);

  static Future<List<ListModel>> getDepartmentListTile() async {
    final http.Response response = await post(
        '''SELECT name AS title, letterCode AS subtitle, id AS id FROM department;''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<DepartmentModel> getDepartmentDetails(String id) async {
    final http.Response response = await post('''SELECT * FROM $id;''');
    return DepartmentStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<String> createDepartment(DepartmentModel department) async {
    final http.Response response = await post(
        '''CREATE department CONTENT ${jsonEncode(department.toJson()).toString()}''');
    DepartmentStatus status =
        DepartmentStatus.fromJson(jsonDecode(response.body)[0]);
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
