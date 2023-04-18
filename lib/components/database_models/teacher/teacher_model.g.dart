// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherStatus _$$_TeacherStatusFromJson(Map<String, dynamic> json) =>
    _$_TeacherStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TeacherStatusToJson(_$_TeacherStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_TeacherModel _$$_TeacherModelFromJson(Map<String, dynamic> json) =>
    _$_TeacherModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      department: json['department'] == null
          ? null
          : DepartmentModel.fromJson(
              json['department'] as Map<String, dynamic>),
      designation: json['designation'] as String?,
      email: json['email'] == null
          ? null
          : EmailModel.fromJson(json['email'] as Map<String, dynamic>),
      gender: json['gender'] as String?,
      bloodGroup: json['blood_group'] as String?,
      personal: json['personal'] == null
          ? null
          : PersonalModel.fromJson(json['personal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeacherModelToJson(_$_TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'department': instance.department,
      'designation': instance.designation,
      'email': instance.email,
      'gender': instance.gender,
      'blood_group': instance.bloodGroup,
      'personal': instance.personal,
    };

_$_ResultModel _$$_ResultModelFromJson(Map<String, dynamic> json) =>
    _$_ResultModel(
      cgpa: (json['cgpa'] as num?)?.toDouble(),
      grade: json['grade'] as String?,
      totalCredit: (json['total_credit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ResultModelToJson(_$_ResultModel instance) =>
    <String, dynamic>{
      'cgpa': instance.cgpa,
      'grade': instance.grade,
      'total_credit': instance.totalCredit,
    };
