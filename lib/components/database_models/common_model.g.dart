// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListStatus _$$_ListStatusFromJson(Map<String, dynamic> json) =>
    _$_ListStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => ListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListStatusToJson(_$_ListStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_ListModel _$$_ListModelFromJson(Map<String, dynamic> json) => _$_ListModel(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ListModelToJson(_$_ListModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'id': instance.id,
    };

_$_EmailModel _$$_EmailModelFromJson(Map<String, dynamic> json) =>
    _$_EmailModel(
      personal: json['personal'] as String?,
      academic: json['academic'] as String?,
    );

Map<String, dynamic> _$$_EmailModelToJson(_$_EmailModel instance) =>
    <String, dynamic>{
      'personal': instance.personal,
      'academic': instance.academic,
    };

_$_PersonalModel _$$_PersonalModelFromJson(Map<String, dynamic> json) =>
    _$_PersonalModel(
      father: json['father'] as String?,
      mother: json['mother'] as String?,
      birthday: json['birthday'] as String?,
      phone: json['phone'] as int?,
      hometown: json['hometown'] as String?,
    );

Map<String, dynamic> _$$_PersonalModelToJson(_$_PersonalModel instance) =>
    <String, dynamic>{
      'father': instance.father,
      'mother': instance.mother,
      'birthday': instance.birthday,
      'phone': instance.phone,
      'hometown': instance.hometown,
    };
