// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminStatus _$AdminStatusFromJson(Map<String, dynamic> json) {
  return _AdminStatus.fromJson(json);
}

/// @nodoc
mixin _$AdminStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<AdminModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminStatusCopyWith<AdminStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStatusCopyWith<$Res> {
  factory $AdminStatusCopyWith(
          AdminStatus value, $Res Function(AdminStatus) then) =
      _$AdminStatusCopyWithImpl<$Res, AdminStatus>;
  @useResult
  $Res call(
      {String? time, String? status, String? detail, List<AdminModel>? result});
}

/// @nodoc
class _$AdminStatusCopyWithImpl<$Res, $Val extends AdminStatus>
    implements $AdminStatusCopyWith<$Res> {
  _$AdminStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<AdminModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminStatusCopyWith<$Res>
    implements $AdminStatusCopyWith<$Res> {
  factory _$$_AdminStatusCopyWith(
          _$_AdminStatus value, $Res Function(_$_AdminStatus) then) =
      __$$_AdminStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time, String? status, String? detail, List<AdminModel>? result});
}

/// @nodoc
class __$$_AdminStatusCopyWithImpl<$Res>
    extends _$AdminStatusCopyWithImpl<$Res, _$_AdminStatus>
    implements _$$_AdminStatusCopyWith<$Res> {
  __$$_AdminStatusCopyWithImpl(
      _$_AdminStatus _value, $Res Function(_$_AdminStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_AdminStatus(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<AdminModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AdminStatus with DiagnosticableTreeMixin implements _AdminStatus {
  const _$_AdminStatus(
      {this.time, this.status, this.detail, final List<AdminModel>? result})
      : _result = result;

  factory _$_AdminStatus.fromJson(Map<String, dynamic> json) =>
      _$$_AdminStatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<AdminModel>? _result;
  @override
  List<AdminModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdminStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminStatus &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, status, detail,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminStatusCopyWith<_$_AdminStatus> get copyWith =>
      __$$_AdminStatusCopyWithImpl<_$_AdminStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminStatusToJson(
      this,
    );
  }
}

abstract class _AdminStatus implements AdminStatus {
  const factory _AdminStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<AdminModel>? result}) = _$_AdminStatus;

  factory _AdminStatus.fromJson(Map<String, dynamic> json) =
      _$_AdminStatus.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<AdminModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_AdminStatusCopyWith<_$_AdminStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) {
  return _AdminModel.fromJson(json);
}

/// @nodoc
mixin _$AdminModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DepartmentModel? get department => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  EmailModel? get email => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get bloodGroup => throw _privateConstructorUsedError;
  PersonalModel? get personal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminModelCopyWith<AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminModelCopyWith<$Res> {
  factory $AdminModelCopyWith(
          AdminModel value, $Res Function(AdminModel) then) =
      _$AdminModelCopyWithImpl<$Res, AdminModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      DepartmentModel? department,
      String? designation,
      EmailModel? email,
      String? gender,
      String? bloodGroup,
      PersonalModel? personal});

  $DepartmentModelCopyWith<$Res>? get department;
  $EmailModelCopyWith<$Res>? get email;
  $PersonalModelCopyWith<$Res>? get personal;
}

/// @nodoc
class _$AdminModelCopyWithImpl<$Res, $Val extends AdminModel>
    implements $AdminModelCopyWith<$Res> {
  _$AdminModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? department = freezed,
    Object? designation = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? bloodGroup = freezed,
    Object? personal = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailModel?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: freezed == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as PersonalModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $DepartmentModelCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailModelCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $EmailModelCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalModelCopyWith<$Res>? get personal {
    if (_value.personal == null) {
      return null;
    }

    return $PersonalModelCopyWith<$Res>(_value.personal!, (value) {
      return _then(_value.copyWith(personal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AdminModelCopyWith<$Res>
    implements $AdminModelCopyWith<$Res> {
  factory _$$_AdminModelCopyWith(
          _$_AdminModel value, $Res Function(_$_AdminModel) then) =
      __$$_AdminModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      DepartmentModel? department,
      String? designation,
      EmailModel? email,
      String? gender,
      String? bloodGroup,
      PersonalModel? personal});

  @override
  $DepartmentModelCopyWith<$Res>? get department;
  @override
  $EmailModelCopyWith<$Res>? get email;
  @override
  $PersonalModelCopyWith<$Res>? get personal;
}

/// @nodoc
class __$$_AdminModelCopyWithImpl<$Res>
    extends _$AdminModelCopyWithImpl<$Res, _$_AdminModel>
    implements _$$_AdminModelCopyWith<$Res> {
  __$$_AdminModelCopyWithImpl(
      _$_AdminModel _value, $Res Function(_$_AdminModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? department = freezed,
    Object? designation = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? bloodGroup = freezed,
    Object? personal = freezed,
  }) {
    return _then(_$_AdminModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailModel?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: freezed == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as PersonalModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AdminModel with DiagnosticableTreeMixin implements _AdminModel {
  const _$_AdminModel(
      {this.id,
      this.name,
      this.department,
      this.designation,
      this.email,
      this.gender,
      this.bloodGroup,
      this.personal});

  factory _$_AdminModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final DepartmentModel? department;
  @override
  final String? designation;
  @override
  final EmailModel? email;
  @override
  final String? gender;
  @override
  final String? bloodGroup;
  @override
  final PersonalModel? personal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminModel(id: $id, name: $name, department: $department, designation: $designation, email: $email, gender: $gender, bloodGroup: $bloodGroup, personal: $personal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdminModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('bloodGroup', bloodGroup))
      ..add(DiagnosticsProperty('personal', personal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.personal, personal) ||
                other.personal == personal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, department,
      designation, email, gender, bloodGroup, personal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminModelCopyWith<_$_AdminModel> get copyWith =>
      __$$_AdminModelCopyWithImpl<_$_AdminModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminModelToJson(
      this,
    );
  }
}

abstract class _AdminModel implements AdminModel {
  const factory _AdminModel(
      {final String? id,
      final String? name,
      final DepartmentModel? department,
      final String? designation,
      final EmailModel? email,
      final String? gender,
      final String? bloodGroup,
      final PersonalModel? personal}) = _$_AdminModel;

  factory _AdminModel.fromJson(Map<String, dynamic> json) =
      _$_AdminModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  DepartmentModel? get department;
  @override
  String? get designation;
  @override
  EmailModel? get email;
  @override
  String? get gender;
  @override
  String? get bloodGroup;
  @override
  PersonalModel? get personal;
  @override
  @JsonKey(ignore: true)
  _$$_AdminModelCopyWith<_$_AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}
