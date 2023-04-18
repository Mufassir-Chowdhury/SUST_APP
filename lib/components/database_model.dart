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
class Model with _$Model {
  factory Model.department(DepartmentModel department) = _DepartmentResult;
  factory Model.student(StudentModel student) = _StudentResult;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
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
        await post('''SELECT name FROM department;''');
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

@freezed
class StudentModel with _$StudentModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StudentModel({
    int? id,
    String? name,
    DepartmentModel? department,
    EmailModel? building,
    String? gender,
    int? session,
    int? currentSemester,
    String? bloodGroup,
    String? privilage,
    PersonalModel? personal,
    ResultModel? result,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, Object?> json) =>
      _$StudentModelFromJson(json);

  static Future<List<String?>> getStudentNames() async {
    final http.Response response = await post('''SELECT name FROM student;''');
    return Status.fromJson(jsonDecode(response.body)[0])
        .result!
        .map((e) => e.name)
        .toList();
  }
}

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
