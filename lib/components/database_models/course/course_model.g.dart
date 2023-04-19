// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseStatus _$$_CourseStatusFromJson(Map<String, dynamic> json) =>
    _$_CourseStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => CourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseStatusToJson(_$_CourseStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      id: json['id'] as String?,
      credit: (json['credit'] as num?)?.toDouble(),
      name: json['name'] as String?,
      department: json['department'] == null
          ? null
          : DepartmentModel.fromJson(
              json['department'] as Map<String, dynamic>),
      type: json['type'] as String?,
      syllabus: (json['syllabus'] as List<dynamic>?)
          ?.map((e) => SyllabusModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'credit': instance.credit,
      'name': instance.name,
      'department': instance.department,
      'type': instance.type,
      'syllabus': instance.syllabus,
    };

_$_SyllabusModel _$$_SyllabusModelFromJson(Map<String, dynamic> json) =>
    _$_SyllabusModel(
      title: json['title'] as String?,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SyllabusModelToJson(_$_SyllabusModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'topics': instance.topics,
    };
