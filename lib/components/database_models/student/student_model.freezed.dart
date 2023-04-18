// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentStatus _$StudentStatusFromJson(Map<String, dynamic> json) {
  return _StudentStatus.fromJson(json);
}

/// @nodoc
mixin _$StudentStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<StudentModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentStatusCopyWith<StudentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStatusCopyWith<$Res> {
  factory $StudentStatusCopyWith(
          StudentStatus value, $Res Function(StudentStatus) then) =
      _$StudentStatusCopyWithImpl<$Res, StudentStatus>;
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<StudentModel>? result});
}

/// @nodoc
class _$StudentStatusCopyWithImpl<$Res, $Val extends StudentStatus>
    implements $StudentStatusCopyWith<$Res> {
  _$StudentStatusCopyWithImpl(this._value, this._then);

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
              as List<StudentModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentStatusCopyWith<$Res>
    implements $StudentStatusCopyWith<$Res> {
  factory _$$_StudentStatusCopyWith(
          _$_StudentStatus value, $Res Function(_$_StudentStatus) then) =
      __$$_StudentStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<StudentModel>? result});
}

/// @nodoc
class __$$_StudentStatusCopyWithImpl<$Res>
    extends _$StudentStatusCopyWithImpl<$Res, _$_StudentStatus>
    implements _$$_StudentStatusCopyWith<$Res> {
  __$$_StudentStatusCopyWithImpl(
      _$_StudentStatus _value, $Res Function(_$_StudentStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_StudentStatus(
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
              as List<StudentModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_StudentStatus with DiagnosticableTreeMixin implements _StudentStatus {
  const _$_StudentStatus(
      {this.time, this.status, this.detail, final List<StudentModel>? result})
      : _result = result;

  factory _$_StudentStatus.fromJson(Map<String, dynamic> json) =>
      _$$_StudentStatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<StudentModel>? _result;
  @override
  List<StudentModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentStatus &&
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
  _$$_StudentStatusCopyWith<_$_StudentStatus> get copyWith =>
      __$$_StudentStatusCopyWithImpl<_$_StudentStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentStatusToJson(
      this,
    );
  }
}

abstract class _StudentStatus implements StudentStatus {
  const factory _StudentStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<StudentModel>? result}) = _$_StudentStatus;

  factory _StudentStatus.fromJson(Map<String, dynamic> json) =
      _$_StudentStatus.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<StudentModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_StudentStatusCopyWith<_$_StudentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DepartmentModel? get department => throw _privateConstructorUsedError;
  EmailModel? get email => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  int? get session => throw _privateConstructorUsedError;
  int? get currentSemester => throw _privateConstructorUsedError;
  String? get bloodGroup => throw _privateConstructorUsedError;
  String? get privilage => throw _privateConstructorUsedError;
  PersonalModel? get personal => throw _privateConstructorUsedError;
  ResultModel? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
          StudentModel value, $Res Function(StudentModel) then) =
      _$StudentModelCopyWithImpl<$Res, StudentModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      DepartmentModel? department,
      EmailModel? email,
      String? gender,
      int? session,
      int? currentSemester,
      String? bloodGroup,
      String? privilage,
      PersonalModel? personal,
      ResultModel? result});

  $DepartmentModelCopyWith<$Res>? get department;
  $EmailModelCopyWith<$Res>? get email;
  $PersonalModelCopyWith<$Res>? get personal;
  $ResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? gender = freezed,
    Object? session = freezed,
    Object? currentSemester = freezed,
    Object? bloodGroup = freezed,
    Object? privilage = freezed,
    Object? personal = freezed,
    Object? result = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailModel?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodGroup: freezed == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      privilage: freezed == privilage
          ? _value.privilage
          : privilage // ignore: cast_nullable_to_non_nullable
              as String?,
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as PersonalModel?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudentModelCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$_StudentModelCopyWith(
          _$_StudentModel value, $Res Function(_$_StudentModel) then) =
      __$$_StudentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      DepartmentModel? department,
      EmailModel? email,
      String? gender,
      int? session,
      int? currentSemester,
      String? bloodGroup,
      String? privilage,
      PersonalModel? personal,
      ResultModel? result});

  @override
  $DepartmentModelCopyWith<$Res>? get department;
  @override
  $EmailModelCopyWith<$Res>? get email;
  @override
  $PersonalModelCopyWith<$Res>? get personal;
  @override
  $ResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_StudentModelCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$_StudentModel>
    implements _$$_StudentModelCopyWith<$Res> {
  __$$_StudentModelCopyWithImpl(
      _$_StudentModel _value, $Res Function(_$_StudentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? department = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? session = freezed,
    Object? currentSemester = freezed,
    Object? bloodGroup = freezed,
    Object? privilage = freezed,
    Object? personal = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_StudentModel(
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailModel?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodGroup: freezed == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      privilage: freezed == privilage
          ? _value.privilage
          : privilage // ignore: cast_nullable_to_non_nullable
              as String?,
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as PersonalModel?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_StudentModel with DiagnosticableTreeMixin implements _StudentModel {
  const _$_StudentModel(
      {this.id,
      this.name,
      this.department,
      this.email,
      this.gender,
      this.session,
      this.currentSemester,
      this.bloodGroup,
      this.privilage,
      this.personal,
      this.result});

  factory _$_StudentModel.fromJson(Map<String, dynamic> json) =>
      _$$_StudentModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final DepartmentModel? department;
  @override
  final EmailModel? email;
  @override
  final String? gender;
  @override
  final int? session;
  @override
  final int? currentSemester;
  @override
  final String? bloodGroup;
  @override
  final String? privilage;
  @override
  final PersonalModel? personal;
  @override
  final ResultModel? result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentModel(id: $id, name: $name, department: $department, email: $email, gender: $gender, session: $session, currentSemester: $currentSemester, bloodGroup: $bloodGroup, privilage: $privilage, personal: $personal, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('currentSemester', currentSemester))
      ..add(DiagnosticsProperty('bloodGroup', bloodGroup))
      ..add(DiagnosticsProperty('privilage', privilage))
      ..add(DiagnosticsProperty('personal', personal))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.currentSemester, currentSemester) ||
                other.currentSemester == currentSemester) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.privilage, privilage) ||
                other.privilage == privilage) &&
            (identical(other.personal, personal) ||
                other.personal == personal) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      department,
      email,
      gender,
      session,
      currentSemester,
      bloodGroup,
      privilage,
      personal,
      result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentModelCopyWith<_$_StudentModel> get copyWith =>
      __$$_StudentModelCopyWithImpl<_$_StudentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentModelToJson(
      this,
    );
  }
}

abstract class _StudentModel implements StudentModel {
  const factory _StudentModel(
      {final String? id,
      final String? name,
      final DepartmentModel? department,
      final EmailModel? email,
      final String? gender,
      final int? session,
      final int? currentSemester,
      final String? bloodGroup,
      final String? privilage,
      final PersonalModel? personal,
      final ResultModel? result}) = _$_StudentModel;

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$_StudentModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  DepartmentModel? get department;
  @override
  EmailModel? get email;
  @override
  String? get gender;
  @override
  int? get session;
  @override
  int? get currentSemester;
  @override
  String? get bloodGroup;
  @override
  String? get privilage;
  @override
  PersonalModel? get personal;
  @override
  ResultModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$_StudentModelCopyWith<_$_StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailModel _$EmailModelFromJson(Map<String, dynamic> json) {
  return _EmailModel.fromJson(json);
}

/// @nodoc
mixin _$EmailModel {
  String? get personal => throw _privateConstructorUsedError;
  String? get academic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailModelCopyWith<EmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailModelCopyWith<$Res> {
  factory $EmailModelCopyWith(
          EmailModel value, $Res Function(EmailModel) then) =
      _$EmailModelCopyWithImpl<$Res, EmailModel>;
  @useResult
  $Res call({String? personal, String? academic});
}

/// @nodoc
class _$EmailModelCopyWithImpl<$Res, $Val extends EmailModel>
    implements $EmailModelCopyWith<$Res> {
  _$EmailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personal = freezed,
    Object? academic = freezed,
  }) {
    return _then(_value.copyWith(
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as String?,
      academic: freezed == academic
          ? _value.academic
          : academic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailModelCopyWith<$Res>
    implements $EmailModelCopyWith<$Res> {
  factory _$$_EmailModelCopyWith(
          _$_EmailModel value, $Res Function(_$_EmailModel) then) =
      __$$_EmailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? personal, String? academic});
}

/// @nodoc
class __$$_EmailModelCopyWithImpl<$Res>
    extends _$EmailModelCopyWithImpl<$Res, _$_EmailModel>
    implements _$$_EmailModelCopyWith<$Res> {
  __$$_EmailModelCopyWithImpl(
      _$_EmailModel _value, $Res Function(_$_EmailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personal = freezed,
    Object? academic = freezed,
  }) {
    return _then(_$_EmailModel(
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as String?,
      academic: freezed == academic
          ? _value.academic
          : academic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_EmailModel with DiagnosticableTreeMixin implements _EmailModel {
  const _$_EmailModel({this.personal, this.academic});

  factory _$_EmailModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmailModelFromJson(json);

  @override
  final String? personal;
  @override
  final String? academic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailModel(personal: $personal, academic: $academic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailModel'))
      ..add(DiagnosticsProperty('personal', personal))
      ..add(DiagnosticsProperty('academic', academic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailModel &&
            (identical(other.personal, personal) ||
                other.personal == personal) &&
            (identical(other.academic, academic) ||
                other.academic == academic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, personal, academic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailModelCopyWith<_$_EmailModel> get copyWith =>
      __$$_EmailModelCopyWithImpl<_$_EmailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailModelToJson(
      this,
    );
  }
}

abstract class _EmailModel implements EmailModel {
  const factory _EmailModel({final String? personal, final String? academic}) =
      _$_EmailModel;

  factory _EmailModel.fromJson(Map<String, dynamic> json) =
      _$_EmailModel.fromJson;

  @override
  String? get personal;
  @override
  String? get academic;
  @override
  @JsonKey(ignore: true)
  _$$_EmailModelCopyWith<_$_EmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalModel _$PersonalModelFromJson(Map<String, dynamic> json) {
  return _PersonalModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalModel {
  String? get father => throw _privateConstructorUsedError;
  String? get mother => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  int? get phone => throw _privateConstructorUsedError;
  String? get hometown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalModelCopyWith<PersonalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalModelCopyWith<$Res> {
  factory $PersonalModelCopyWith(
          PersonalModel value, $Res Function(PersonalModel) then) =
      _$PersonalModelCopyWithImpl<$Res, PersonalModel>;
  @useResult
  $Res call(
      {String? father,
      String? mother,
      String? birthday,
      int? phone,
      String? hometown});
}

/// @nodoc
class _$PersonalModelCopyWithImpl<$Res, $Val extends PersonalModel>
    implements $PersonalModelCopyWith<$Res> {
  _$PersonalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? father = freezed,
    Object? mother = freezed,
    Object? birthday = freezed,
    Object? phone = freezed,
    Object? hometown = freezed,
  }) {
    return _then(_value.copyWith(
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      hometown: freezed == hometown
          ? _value.hometown
          : hometown // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalModelCopyWith<$Res>
    implements $PersonalModelCopyWith<$Res> {
  factory _$$_PersonalModelCopyWith(
          _$_PersonalModel value, $Res Function(_$_PersonalModel) then) =
      __$$_PersonalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? father,
      String? mother,
      String? birthday,
      int? phone,
      String? hometown});
}

/// @nodoc
class __$$_PersonalModelCopyWithImpl<$Res>
    extends _$PersonalModelCopyWithImpl<$Res, _$_PersonalModel>
    implements _$$_PersonalModelCopyWith<$Res> {
  __$$_PersonalModelCopyWithImpl(
      _$_PersonalModel _value, $Res Function(_$_PersonalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? father = freezed,
    Object? mother = freezed,
    Object? birthday = freezed,
    Object? phone = freezed,
    Object? hometown = freezed,
  }) {
    return _then(_$_PersonalModel(
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      hometown: freezed == hometown
          ? _value.hometown
          : hometown // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PersonalModel with DiagnosticableTreeMixin implements _PersonalModel {
  const _$_PersonalModel(
      {this.father, this.mother, this.birthday, this.phone, this.hometown});

  factory _$_PersonalModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalModelFromJson(json);

  @override
  final String? father;
  @override
  final String? mother;
  @override
  final String? birthday;
  @override
  final int? phone;
  @override
  final String? hometown;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonalModel(father: $father, mother: $mother, birthday: $birthday, phone: $phone, hometown: $hometown)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonalModel'))
      ..add(DiagnosticsProperty('father', father))
      ..add(DiagnosticsProperty('mother', mother))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('hometown', hometown));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalModel &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.hometown, hometown) ||
                other.hometown == hometown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, father, mother, birthday, phone, hometown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalModelCopyWith<_$_PersonalModel> get copyWith =>
      __$$_PersonalModelCopyWithImpl<_$_PersonalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalModelToJson(
      this,
    );
  }
}

abstract class _PersonalModel implements PersonalModel {
  const factory _PersonalModel(
      {final String? father,
      final String? mother,
      final String? birthday,
      final int? phone,
      final String? hometown}) = _$_PersonalModel;

  factory _PersonalModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalModel.fromJson;

  @override
  String? get father;
  @override
  String? get mother;
  @override
  String? get birthday;
  @override
  int? get phone;
  @override
  String? get hometown;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalModelCopyWith<_$_PersonalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  double? get cgpa => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  double? get totalCredit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call({double? cgpa, String? grade, double? totalCredit});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cgpa = freezed,
    Object? grade = freezed,
    Object? totalCredit = freezed,
  }) {
    return _then(_value.copyWith(
      cgpa: freezed == cgpa
          ? _value.cgpa
          : cgpa // ignore: cast_nullable_to_non_nullable
              as double?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCredit: freezed == totalCredit
          ? _value.totalCredit
          : totalCredit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$_ResultModelCopyWith(
          _$_ResultModel value, $Res Function(_$_ResultModel) then) =
      __$$_ResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? cgpa, String? grade, double? totalCredit});
}

/// @nodoc
class __$$_ResultModelCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$_ResultModel>
    implements _$$_ResultModelCopyWith<$Res> {
  __$$_ResultModelCopyWithImpl(
      _$_ResultModel _value, $Res Function(_$_ResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cgpa = freezed,
    Object? grade = freezed,
    Object? totalCredit = freezed,
  }) {
    return _then(_$_ResultModel(
      cgpa: freezed == cgpa
          ? _value.cgpa
          : cgpa // ignore: cast_nullable_to_non_nullable
              as double?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCredit: freezed == totalCredit
          ? _value.totalCredit
          : totalCredit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ResultModel with DiagnosticableTreeMixin implements _ResultModel {
  const _$_ResultModel({this.cgpa, this.grade, this.totalCredit});

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultModelFromJson(json);

  @override
  final double? cgpa;
  @override
  final String? grade;
  @override
  final double? totalCredit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultModel(cgpa: $cgpa, grade: $grade, totalCredit: $totalCredit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultModel'))
      ..add(DiagnosticsProperty('cgpa', cgpa))
      ..add(DiagnosticsProperty('grade', grade))
      ..add(DiagnosticsProperty('totalCredit', totalCredit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultModel &&
            (identical(other.cgpa, cgpa) || other.cgpa == cgpa) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.totalCredit, totalCredit) ||
                other.totalCredit == totalCredit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cgpa, grade, totalCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      __$$_ResultModelCopyWithImpl<_$_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultModelToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {final double? cgpa,
      final String? grade,
      final double? totalCredit}) = _$_ResultModel;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

  @override
  double? get cgpa;
  @override
  String? get grade;
  @override
  double? get totalCredit;
  @override
  @JsonKey(ignore: true)
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
