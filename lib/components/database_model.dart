import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'database_model.freezed.dart';
part 'database_model.g.dart';

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
class StudentStatus with _$StudentStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StudentStatus({
    String? time,
    String? status,
    String? detail,
    List<StudentModel>? result,
  }) = _StudentStatus;

  factory StudentStatus.fromJson(Map<String, Object?> json) =>
      _$StudentStatusFromJson(json);
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

  static Future<List<DepartmentModel?>> getDepartmentNames() async {
    final http.Response response =
        await post('''SELECT name, id FROM department;''');
    return DepartmentStatus.fromJson(jsonDecode(response.body)[0]).result!;
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

@freezed
class StudentModel with _$StudentModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StudentModel({
    String? id,
    String? name,
    DepartmentModel? department,
    EmailModel? email,
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

  static Future<List<StudentModel?>> getStudentNames() async {
    final http.Response response =
        await post('''SELECT name, id FROM student;''');
    return StudentStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<StudentModel> getStudentDetails(String id) async {
    final http.Response response =
        await post('''SELECT * FROM $id FETCH department;''');
    return StudentStatus.fromJson(jsonDecode(response.body)[0]).result![0];
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
