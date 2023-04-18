// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentStatus _$$_DepartmentStatusFromJson(Map<String, dynamic> json) =>
    _$_DepartmentStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DepartmentStatusToJson(_$_DepartmentStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_DepartmentModel _$$_DepartmentModelFromJson(Map<String, dynamic> json) =>
    _$_DepartmentModel(
      code: json['code'] as int?,
      floor: json['floor'] as int?,
      id: json['id'] as String?,
      letterCode: json['letter_code'] as String?,
      name: json['name'] as String?,
      building: json['building'] as String?,
      minorCourseCode: json['minor_course_code'] as String?,
    );

Map<String, dynamic> _$$_DepartmentModelToJson(_$_DepartmentModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'floor': instance.floor,
      'id': instance.id,
      'letter_code': instance.letterCode,
      'name': instance.name,
      'building': instance.building,
      'minor_course_code': instance.minorCourseCode,
    };
