import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'database_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Status {
  String? time;
  String? status;
  List<DepartmentModel>? result;

  Status({this.time, this.status, this.result});

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DepartmentModel {
  int? code;
  int? floor;
  String? building;
  String? id;
  String? letterCode;
  String? name;

  DepartmentModel({
    required this.code,
    required this.floor,
    this.id,
    required this.letterCode,
    required this.name,
    required this.building,
  });

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$DepartmentModelToJson(this);

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
                  WHERE name = "$departmentName"''');
    return Status.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  static Future<String> createDepartment(DepartmentModel department) async {
    final http.Response response = await post(
        '''CREATE department:${department.letterCode} CONTENT ${jsonEncode(department.toJson()).toString()}''');
    return jsonDecode(response.body)[0]['status'];
  }
}
