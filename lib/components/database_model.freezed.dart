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
  return _DepartmentResult.fromJson(json);
}

/// @nodoc
mixin _$Model {
  DepartmentModel get department => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) department,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? department,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? department,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentResult value) department,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepartmentResult value)? department,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentResult value)? department,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call({DepartmentModel department});

  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_value.copyWith(
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DepartmentResultCopyWith<$Res>
    implements $ModelCopyWith<$Res> {
  factory _$$_DepartmentResultCopyWith(
          _$_DepartmentResult value, $Res Function(_$_DepartmentResult) then) =
      __$$_DepartmentResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DepartmentModel department});

  @override
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
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentResult
    with DiagnosticableTreeMixin
    implements _DepartmentResult {
  _$_DepartmentResult(this.department);

  factory _$_DepartmentResult.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentResultFromJson(json);

  @override
  final DepartmentModel department;

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
  }) {
    return department(this.department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? department,
  }) {
    return department?.call(this.department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? department,
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
  }) {
    return department(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepartmentResult value)? department,
  }) {
    return department?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentResult value)? department,
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

  @override
  DepartmentModel get department;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentResultCopyWith<_$_DepartmentResult> get copyWith =>
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
