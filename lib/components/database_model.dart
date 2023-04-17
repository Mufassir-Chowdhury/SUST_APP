import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'database_model.g.dart';

// TODO use freezed

@JsonSerializable(fieldRename: FieldRename.snake)
class Status {
  String? time;
  String? status;
  String? detail;
  List<DepartmentModel>? result;

  Status({this.time, this.status, this.detail, this.result});

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
  String? minorCourseCode;

  DepartmentModel({
    required this.code,
    required this.floor,
    required this.id,
    required this.letterCode,
    required this.name,
    required this.building,
    required this.minorCourseCode,
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
