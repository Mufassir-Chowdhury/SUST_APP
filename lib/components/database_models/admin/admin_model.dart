import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class AdminStatus with _$AdminStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdminStatus({
    String? time,
    String? status,
    String? detail,
    List<AdminModel>? result,
  }) = _AdminStatus;

  factory AdminStatus.fromJson(Map<String, Object?> json) =>
      _$AdminStatusFromJson(json);
}

@freezed
class AdminModel with _$AdminModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AdminModel({
    String? id,
    String? name,
    DepartmentModel? department,
    String? designation,
    EmailModel? email,
    String? gender,
    String? bloodGroup,
    PersonalModel? personal,
  }) = _AdminModel;

  factory AdminModel.fromJson(Map<String, Object?> json) =>
      _$AdminModelFromJson(json);

  static Future<List<ListModel>> getListTile() async {
    final http.Response response = await post(
        '''SELECT name AS title, department.name AS subtitle, id AS id FROM admin;''');
    return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }

  static Future<AdminModel> getDetails(String id) async {
    final http.Response response =
        await post('''SELECT * FROM $id FETCH department;''');
    return AdminStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  }
}
