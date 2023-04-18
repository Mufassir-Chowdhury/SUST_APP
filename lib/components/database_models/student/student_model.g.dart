// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentStatus _$$_StudentStatusFromJson(Map<String, dynamic> json) =>
    _$_StudentStatus(
      time: json['time'] as String?,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => StudentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StudentStatusToJson(_$_StudentStatus instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': instance.status,
      'detail': instance.detail,
      'result': instance.result,
    };

_$_StudentModel _$$_StudentModelFromJson(Map<String, dynamic> json) =>
    _$_StudentModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      department: json['department'] == null
          ? null
          : DepartmentModel.fromJson(
              json['department'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : EmailModel.fromJson(json['email'] as Map<String, dynamic>),
      gender: json['gender'] as String?,
      session: json['session'] as int?,
      currentSemester: json['current_semester'] as int?,
      bloodGroup: json['blood_group'] as String?,
      privilage: json['privilage'] as String?,
      personal: json['personal'] == null
          ? null
          : PersonalModel.fromJson(json['personal'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : ResultModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StudentModelToJson(_$_StudentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'department': instance.department,
      'email': instance.email,
      'gender': instance.gender,
      'session': instance.session,
      'current_semester': instance.currentSemester,
      'blood_group': instance.bloodGroup,
      'privilage': instance.privilage,
      'personal': instance.personal,
      'result': instance.result,
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
