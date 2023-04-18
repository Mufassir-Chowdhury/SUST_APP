// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<DepartmentModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<DepartmentModel>? result});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

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
              as List<DepartmentModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<DepartmentModel>? result});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_Status>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_Status(
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
              as List<DepartmentModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Status with DiagnosticableTreeMixin implements _Status {
  const _$_Status(
      {this.time,
      this.status,
      this.detail,
      final List<DepartmentModel>? result})
      : _result = result;

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<DepartmentModel>? _result;
  @override
  List<DepartmentModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Status(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Status'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
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
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {final String? time,
      final String? status,
      final String? detail,
      final List<DepartmentModel>? result}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<DepartmentModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

Model _$ModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'department':
      return _DepartmentResult.fromJson(json);
    case 'student':
      return _StudentResult.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Model',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Model {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) department,
    required TResult Function(StudentModel student) student,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? department,
    TResult? Function(StudentModel student)? student,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? department,
    TResult Function(StudentModel student)? student,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentResult value) department,
    required TResult Function(_StudentResult value) student,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepartmentResult value)? department,
    TResult? Function(_StudentResult value)? student,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentResult value)? department,
    TResult Function(_StudentResult value)? student,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DepartmentResultCopyWith<$Res> {
  factory _$$_DepartmentResultCopyWith(
          _$_DepartmentResult value, $Res Function(_$_DepartmentResult) then) =
      __$$_DepartmentResultCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentModel department});

  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class __$$_DepartmentResultCopyWithImpl<$Res>
    extends _$ModelCopyWithImpl<$Res, _$_DepartmentResult>
    implements _$$_DepartmentResultCopyWith<$Res> {
  __$$_DepartmentResultCopyWithImpl(
      _$_DepartmentResult _value, $Res Function(_$_DepartmentResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$_DepartmentResult(
      null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentResult
    with DiagnosticableTreeMixin
    implements _DepartmentResult {
  _$_DepartmentResult(this.department, {final String? $type})
      : $type = $type ?? 'department';

  factory _$_DepartmentResult.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentResultFromJson(json);

  @override
  final DepartmentModel department;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Model.department(department: $department)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Model.department'))
      ..add(DiagnosticsProperty('department', department));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentResult &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, department);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentResultCopyWith<_$_DepartmentResult> get copyWith =>
      __$$_DepartmentResultCopyWithImpl<_$_DepartmentResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) department,
    required TResult Function(StudentModel student) student,
  }) {
    return department(this.department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? department,
    TResult? Function(StudentModel student)? student,
  }) {
    return department?.call(this.department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? department,
    TResult Function(StudentModel student)? student,
    required TResult orElse(),
  }) {
    if (department != null) {
      return department(this.department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentResult value) department,
    required TResult Function(_StudentResult value) student,
  }) {
    return department(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepartmentResult value)? department,
    TResult? Function(_StudentResult value)? student,
  }) {
    return department?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentResult value)? department,
    TResult Function(_StudentResult value)? student,
    required TResult orElse(),
  }) {
    if (department != null) {
      return department(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentResultToJson(
      this,
    );
  }
}

abstract class _DepartmentResult implements Model {
  factory _DepartmentResult(final DepartmentModel department) =
      _$_DepartmentResult;

  factory _DepartmentResult.fromJson(Map<String, dynamic> json) =
      _$_DepartmentResult.fromJson;

  DepartmentModel get department;
  @JsonKey(ignore: true)
  _$$_DepartmentResultCopyWith<_$_DepartmentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StudentResultCopyWith<$Res> {
  factory _$$_StudentResultCopyWith(
          _$_StudentResult value, $Res Function(_$_StudentResult) then) =
      __$$_StudentResultCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel student});

  $StudentModelCopyWith<$Res> get student;
}

/// @nodoc
class __$$_StudentResultCopyWithImpl<$Res>
    extends _$ModelCopyWithImpl<$Res, _$_StudentResult>
    implements _$$_StudentResultCopyWith<$Res> {
  __$$_StudentResultCopyWithImpl(
      _$_StudentResult _value, $Res Function(_$_StudentResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$_StudentResult(
      null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res> get student {
    return $StudentModelCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentResult with DiagnosticableTreeMixin implements _StudentResult {
  _$_StudentResult(this.student, {final String? $type})
      : $type = $type ?? 'student';

  factory _$_StudentResult.fromJson(Map<String, dynamic> json) =>
      _$$_StudentResultFromJson(json);

  @override
  final StudentModel student;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Model.student(student: $student)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Model.student'))
      ..add(DiagnosticsProperty('student', student));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentResult &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentResultCopyWith<_$_StudentResult> get copyWith =>
      __$$_StudentResultCopyWithImpl<_$_StudentResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) department,
    required TResult Function(StudentModel student) student,
  }) {
    return student(this.student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? department,
    TResult? Function(StudentModel student)? student,
  }) {
    return student?.call(this.student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? department,
    TResult Function(StudentModel student)? student,
    required TResult orElse(),
  }) {
    if (student != null) {
      return student(this.student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentResult value) department,
    required TResult Function(_StudentResult value) student,
  }) {
    return student(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepartmentResult value)? department,
    TResult? Function(_StudentResult value)? student,
  }) {
    return student?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentResult value)? department,
    TResult Function(_StudentResult value)? student,
    required TResult orElse(),
  }) {
    if (student != null) {
      return student(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentResultToJson(
      this,
    );
  }
}

abstract class _StudentResult implements Model {
  factory _StudentResult(final StudentModel student) = _$_StudentResult;

  factory _StudentResult.fromJson(Map<String, dynamic> json) =
      _$_StudentResult.fromJson;

  StudentModel get student;
  @JsonKey(ignore: true)
  _$$_StudentResultCopyWith<_$_StudentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) {
  return _DepartmentModel.fromJson(json);
}

/// @nodoc
mixin _$DepartmentModel {
  int? get code => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get letterCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get building => throw _privateConstructorUsedError;
  String? get minorCourseCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentModelCopyWith<DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentModelCopyWith<$Res> {
  factory $DepartmentModelCopyWith(
          DepartmentModel value, $Res Function(DepartmentModel) then) =
      _$DepartmentModelCopyWithImpl<$Res, DepartmentModel>;
  @useResult
  $Res call(
      {int? code,
      int? floor,
      String? id,
      String? letterCode,
      String? name,
      String? building,
      String? minorCourseCode});
}

/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res, $Val extends DepartmentModel>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? floor = freezed,
    Object? id = freezed,
    Object? letterCode = freezed,
    Object? name = freezed,
    Object? building = freezed,
    Object? minorCourseCode = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      letterCode: freezed == letterCode
          ? _value.letterCode
          : letterCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      minorCourseCode: freezed == minorCourseCode
          ? _value.minorCourseCode
          : minorCourseCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentModelCopyWith<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  factory _$$_DepartmentModelCopyWith(
          _$_DepartmentModel value, $Res Function(_$_DepartmentModel) then) =
      __$$_DepartmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      int? floor,
      String? id,
      String? letterCode,
      String? name,
      String? building,
      String? minorCourseCode});
}

/// @nodoc
class __$$_DepartmentModelCopyWithImpl<$Res>
    extends _$DepartmentModelCopyWithImpl<$Res, _$_DepartmentModel>
    implements _$$_DepartmentModelCopyWith<$Res> {
  __$$_DepartmentModelCopyWithImpl(
      _$_DepartmentModel _value, $Res Function(_$_DepartmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? floor = freezed,
    Object? id = freezed,
    Object? letterCode = freezed,
    Object? name = freezed,
    Object? building = freezed,
    Object? minorCourseCode = freezed,
  }) {
    return _then(_$_DepartmentModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      letterCode: freezed == letterCode
          ? _value.letterCode
          : letterCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      minorCourseCode: freezed == minorCourseCode
          ? _value.minorCourseCode
          : minorCourseCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DepartmentModel
    with DiagnosticableTreeMixin
    implements _DepartmentModel {
  const _$_DepartmentModel(
      {this.code,
      this.floor,
      this.id,
      this.letterCode,
      this.name,
      this.building,
      this.minorCourseCode});

  factory _$_DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentModelFromJson(json);

  @override
  final int? code;
  @override
  final int? floor;
  @override
  final String? id;
  @override
  final String? letterCode;
  @override
  final String? name;
  @override
  final String? building;
  @override
  final String? minorCourseCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DepartmentModel(code: $code, floor: $floor, id: $id, letterCode: $letterCode, name: $name, building: $building, minorCourseCode: $minorCourseCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DepartmentModel'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('floor', floor))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('letterCode', letterCode))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('building', building))
      ..add(DiagnosticsProperty('minorCourseCode', minorCourseCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.letterCode, letterCode) ||
                other.letterCode == letterCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.minorCourseCode, minorCourseCode) ||
                other.minorCourseCode == minorCourseCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, floor, id, letterCode,
      name, building, minorCourseCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentModelCopyWith<_$_DepartmentModel> get copyWith =>
      __$$_DepartmentModelCopyWithImpl<_$_DepartmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentModelToJson(
      this,
    );
  }
}

abstract class _DepartmentModel implements DepartmentModel {
  const factory _DepartmentModel(
      {final int? code,
      final int? floor,
      final String? id,
      final String? letterCode,
      final String? name,
      final String? building,
      final String? minorCourseCode}) = _$_DepartmentModel;

  factory _DepartmentModel.fromJson(Map<String, dynamic> json) =
      _$_DepartmentModel.fromJson;

  @override
  int? get code;
  @override
  int? get floor;
  @override
  String? get id;
  @override
  String? get letterCode;
  @override
  String? get name;
  @override
  String? get building;
  @override
  String? get minorCourseCode;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentModelCopyWith<_$_DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DepartmentModel? get department => throw _privateConstructorUsedError;
  EmailModel? get building => throw _privateConstructorUsedError;
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
      {int? id,
      String? name,
      DepartmentModel? department,
      EmailModel? building,
      String? gender,
      int? session,
      int? currentSemester,
      String? bloodGroup,
      String? privilage,
      PersonalModel? personal,
      ResultModel? result});

  $DepartmentModelCopyWith<$Res>? get department;
  $EmailModelCopyWith<$Res>? get building;
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
    Object? building = freezed,
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
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel?,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
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
  $EmailModelCopyWith<$Res>? get building {
    if (_value.building == null) {
      return null;
    }

    return $EmailModelCopyWith<$Res>(_value.building!, (value) {
      return _then(_value.copyWith(building: value) as $Val);
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
      {int? id,
      String? name,
      DepartmentModel? department,
      EmailModel? building,
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
  $EmailModelCopyWith<$Res>? get building;
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
    Object? building = freezed,
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
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel?,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
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
      this.building,
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
  final int? id;
  @override
  final String? name;
  @override
  final DepartmentModel? department;
  @override
  final EmailModel? building;
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
    return 'StudentModel(id: $id, name: $name, department: $department, building: $building, gender: $gender, session: $session, currentSemester: $currentSemester, bloodGroup: $bloodGroup, privilage: $privilage, personal: $personal, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('building', building))
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
            (identical(other.building, building) ||
                other.building == building) &&
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
      building,
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
      {final int? id,
      final String? name,
      final DepartmentModel? department,
      final EmailModel? building,
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
  int? get id;
  @override
  String? get name;
  @override
  DepartmentModel? get department;
  @override
  EmailModel? get building;
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
