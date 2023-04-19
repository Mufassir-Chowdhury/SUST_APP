import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
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

  static Future<List<ListModel>> getStudentListTile() async {
    final http.Response response = await post(
        '''SELECT name AS title, department.name AS subtitle, id AS id FROM student;''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<StudentModel> getStudentDetails(String id) async {
    final http.Response response =
        await post('''SELECT * FROM $id FETCH department;''');
    return StudentStatus.fromJson(jsonDecode(response.body)[0]).result![0];
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
