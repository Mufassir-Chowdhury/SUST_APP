import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
class TeacherStatus with _$TeacherStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TeacherStatus({
    String? time,
    String? status,
    String? detail,
    List<TeacherModel>? result,
  }) = _TeacherStatus;

  factory TeacherStatus.fromJson(Map<String, Object?> json) =>
      _$TeacherStatusFromJson(json);
}

@freezed
class TeacherModel with _$TeacherModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TeacherModel({
    String? id,
    String? name,
    String? department,
    String? designation,
    EmailModel? email,
    String? gender,
    String? bloodGroup,
    PersonalModel? personal,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, Object?> json) =>
      _$TeacherModelFromJson(json);

  static Future<List<ListModel>> getListTile(String? department) async {
    final http.Response response = await post(
        '''SELECT name AS title, department.name AS subtitle, id AS id FROM teacher  WHERE department = $department;''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<TeacherModel> getDetails(String id) async {
    final http.Response response = await post('''SELECT * FROM $id;''');
    return TeacherStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<TeacherModel> delete(String id) async {
    final http.Response response = await post('''delete $id;''');
    return TeacherStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<String> create(TeacherModel teacher) async {
    final http.Response response = await post(
        '''CREATE teacher:${teacher.id} CONTENT ${jsonEncode(teacher.toJson()).toString()}''');
    TeacherStatus status = TeacherStatus.fromJson(jsonDecode(response.body)[0]);
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

  static Future<String> update(TeacherModel teacher) async {
    final http.Response response = await post(
        '''UPDATE teacher:${teacher.id} MERGE ${jsonEncode(teacher.toJson()).toString()}''');
    TeacherStatus status = TeacherStatus.fromJson(jsonDecode(response.body)[0]);
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
