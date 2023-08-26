// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostStatus _$$_PostStatusFromJson(Map<String, dynamic> json) =>
    _$_PostStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostStatusToJson(_$_PostStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      info: json['info'] == null
          ? null
          : InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      id: json['id'] as String?,
      description: json['description'] as String?,
      pdf: json['pdf'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'id': instance.id,
      'description': instance.description,
      'pdf': instance.pdf,
      'name': instance.name,
    };

_$_InfoModel _$$_InfoModelFromJson(Map<String, dynamic> json) => _$_InfoModel(
      title: json['title'] as String?,
      postedBy: json['posted_by'] as String?,
      dateOfPost: json['date_of_post'] as String?,
    );

Map<String, dynamic> _$$_InfoModelToJson(_$_InfoModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'posted_by': instance.postedBy,
      'date_of_post': instance.dateOfPost,
    };
