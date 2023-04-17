import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'database_model.freezed.dart';
part 'database_model.g.dart';

@freezed
class Status with _$Status {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Status({
    String? time,
    String? status,
    String? detail,
    List<DepartmentModel>? result,
  }) = _Status;

  factory Status.fromJson(Map<String, Object?> json) => _$StatusFromJson(json);
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

  static Future<List<String?>> getDepartmentNames() async {
    final http.Response response =
        await post('''select name from department;''');
    return Status.fromJson(jsonDecode(response.body)[0])
        .result!
        .map((e) => e.name)
        .toList();
  }

  static Future<DepartmentModel> getDepartmentDetails(
      String departmentName) async {
    final http.Response response = await post('''SELECT * FROM department
                  WHERE name = "$departmentName";''');
    return Status.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<String> createDepartment(DepartmentModel department) async {
    final http.Response response = await post(
        '''CREATE department CONTENT ${jsonEncode(department.toJson()).toString()}''');
    Status status = Status.fromJson(jsonDecode(response.body)[0]);
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
