// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      time: json['time'] as String?,
      status: json['status'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'result': instance.result,
    };

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) =>
    DepartmentModel(
      code: json['code'] as int?,
      floor: json['floor'] as String?,
      id: json['id'] as String?,
      letterCode: json['letter_code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DepartmentModelToJson(DepartmentModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'floor': instance.floor,
      'id': instance.id,
      'letter_code': instance.letterCode,
      'name': instance.name,
    };
