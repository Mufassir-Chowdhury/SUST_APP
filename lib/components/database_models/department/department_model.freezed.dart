// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartmentStatus _$DepartmentStatusFromJson(Map<String, dynamic> json) {
  return _DepartmentStatus.fromJson(json);
}

/// @nodoc
mixin _$DepartmentStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<DepartmentModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentStatusCopyWith<DepartmentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStatusCopyWith<$Res> {
  factory $DepartmentStatusCopyWith(
          DepartmentStatus value, $Res Function(DepartmentStatus) then) =
      _$DepartmentStatusCopyWithImpl<$Res, DepartmentStatus>;
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<DepartmentModel>? result});
}

/// @nodoc
class _$DepartmentStatusCopyWithImpl<$Res, $Val extends DepartmentStatus>
    implements $DepartmentStatusCopyWith<$Res> {
  _$DepartmentStatusCopyWithImpl(this._value, this._then);

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
abstract class _$$_DepartmentStatusCopyWith<$Res>
    implements $DepartmentStatusCopyWith<$Res> {
  factory _$$_DepartmentStatusCopyWith(
          _$_DepartmentStatus value, $Res Function(_$_DepartmentStatus) then) =
      __$$_DepartmentStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<DepartmentModel>? result});
}

/// @nodoc
class __$$_DepartmentStatusCopyWithImpl<$Res>
    extends _$DepartmentStatusCopyWithImpl<$Res, _$_DepartmentStatus>
    implements _$$_DepartmentStatusCopyWith<$Res> {
  __$$_DepartmentStatusCopyWithImpl(
      _$_DepartmentStatus _value, $Res Function(_$_DepartmentStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DepartmentStatus(
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
class _$_DepartmentStatus
    with DiagnosticableTreeMixin
    implements _DepartmentStatus {
  const _$_DepartmentStatus(
      {this.time,
      this.status,
      this.detail,
      final List<DepartmentModel>? result})
      : _result = result;

  factory _$_DepartmentStatus.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentStatusFromJson(json);

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
    return 'DepartmentStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DepartmentStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentStatus &&
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
  _$$_DepartmentStatusCopyWith<_$_DepartmentStatus> get copyWith =>
      __$$_DepartmentStatusCopyWithImpl<_$_DepartmentStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentStatusToJson(
      this,
    );
  }
}

abstract class _DepartmentStatus implements DepartmentStatus {
  const factory _DepartmentStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<DepartmentModel>? result}) = _$_DepartmentStatus;

  factory _DepartmentStatus.fromJson(Map<String, dynamic> json) =
      _$_DepartmentStatus.fromJson;

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
  _$$_DepartmentStatusCopyWith<_$_DepartmentStatus> get copyWith =>
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
