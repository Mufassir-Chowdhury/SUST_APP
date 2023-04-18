// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
