import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

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
class StudentModel with _$StudentModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StudentModel({
    String? id,
    String? name,
    String? department,
    EmailModel? email,
    String? gender,
    int? session,
    int? currentSemester,
    String? bloodGroup,
    String? privilage,
    PersonalModel? personal,
    // ResultModel? result,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, Object?> json) =>
      _$StudentModelFromJson(json);

  static Future<List<ListModel>> getListTile(String? department) async {
    final http.Response response = await post(
        '''SELECT name AS title, department.name AS subtitle, id AS id FROM student  WHERE department = $department;''');

    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<StudentModel> getDetails(String id) async {
    final http.Response response = await post('''SELECT * FROM $id''');
    return StudentStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<StudentModel> delete(String id) async {
    final http.Response response = await post('''delete $id;''');
    return StudentStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<String> create(StudentModel student) async {
    final http.Response response = await post(
        '''CREATE student:${student.id} CONTENT ${jsonEncode(student.toJson()).toString()}''');
    StudentStatus status = StudentStatus.fromJson(jsonDecode(response.body)[0]);
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
