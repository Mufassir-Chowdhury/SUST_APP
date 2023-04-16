import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';

class Status {
  String? time;
  String? status;
  List<DepartmentModel>? result;

  Status({this.time, this.status, this.result});

  Status.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    status = json['status'];
    if (json['result'] != null) {
      result = <DepartmentModel>[];
      json['result'].forEach((v) {
        result!.add(DepartmentModel.fromJson(v));
      });
    }
  }
}

class DepartmentModel {
  int? code;
  String? floor;
  String? id;
  String? letterCode;
  String? name;

  DepartmentModel({this.code, this.floor, this.id, this.letterCode, this.name});

  DepartmentModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    floor = json['floor'];
    letterCode = json['letter_code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['floor'] = floor;
    data['name'] = name;
    data['letter_code'] = letterCode;
    return data;
  }

  static Future<List<String?>> getDepartmentNames() async {
    final http.Response response =
        await post('''SELECT name AS name FROM department''');
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
