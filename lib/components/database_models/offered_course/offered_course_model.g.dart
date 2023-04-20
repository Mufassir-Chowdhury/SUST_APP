// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offered_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferedCourseStatus _$$_OfferedCourseStatusFromJson(
        Map<String, dynamic> json) =>
    _$_OfferedCourseStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => OfferedCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OfferedCourseStatusToJson(
        _$_OfferedCourseStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_OfferedCourseModel _$$_OfferedCourseModelFromJson(
        Map<String, dynamic> json) =>
    _$_OfferedCourseModel(
      id: json['id'] as String?,
      course: json['course'] as String?,
      department: json['department'] as String?,
      semester: json['semester'] as int?,
      usn: json['usn'] as String?,
    );

Map<String, dynamic> _$$_OfferedCourseModelToJson(
        _$_OfferedCourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course': instance.course,
      'department': instance.department,
      'semester': instance.semester,
      'usn': instance.usn,
    };
