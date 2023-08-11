// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offered_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferedCourseStatus _$OfferedCourseStatusFromJson(Map<String, dynamic> json) {
  return _OfferedCourseStatus.fromJson(json);
}

/// @nodoc
mixin _$OfferedCourseStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<OfferedCourseModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferedCourseStatusCopyWith<OfferedCourseStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedCourseStatusCopyWith<$Res> {
  factory $OfferedCourseStatusCopyWith(
          OfferedCourseStatus value, $Res Function(OfferedCourseStatus) then) =
      _$OfferedCourseStatusCopyWithImpl<$Res, OfferedCourseStatus>;
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<OfferedCourseModel>? result});
}

/// @nodoc
class _$OfferedCourseStatusCopyWithImpl<$Res, $Val extends OfferedCourseStatus>
    implements $OfferedCourseStatusCopyWith<$Res> {
  _$OfferedCourseStatusCopyWithImpl(this._value, this._then);

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
              as List<OfferedCourseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferedCourseStatusCopyWith<$Res>
    implements $OfferedCourseStatusCopyWith<$Res> {
  factory _$$_OfferedCourseStatusCopyWith(_$_OfferedCourseStatus value,
          $Res Function(_$_OfferedCourseStatus) then) =
      __$$_OfferedCourseStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<OfferedCourseModel>? result});
}

/// @nodoc
class __$$_OfferedCourseStatusCopyWithImpl<$Res>
    extends _$OfferedCourseStatusCopyWithImpl<$Res, _$_OfferedCourseStatus>
    implements _$$_OfferedCourseStatusCopyWith<$Res> {
  __$$_OfferedCourseStatusCopyWithImpl(_$_OfferedCourseStatus _value,
      $Res Function(_$_OfferedCourseStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_OfferedCourseStatus(
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
              as List<OfferedCourseModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_OfferedCourseStatus
    with DiagnosticableTreeMixin
    implements _OfferedCourseStatus {
  const _$_OfferedCourseStatus(
      {this.time,
      this.status,
      this.detail,
      final List<OfferedCourseModel>? result})
      : _result = result;

  factory _$_OfferedCourseStatus.fromJson(Map<String, dynamic> json) =>
      _$$_OfferedCourseStatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<OfferedCourseModel>? _result;
  @override
  List<OfferedCourseModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OfferedCourseStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OfferedCourseStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferedCourseStatus &&
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
  _$$_OfferedCourseStatusCopyWith<_$_OfferedCourseStatus> get copyWith =>
      __$$_OfferedCourseStatusCopyWithImpl<_$_OfferedCourseStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferedCourseStatusToJson(
      this,
    );
  }
}

abstract class _OfferedCourseStatus implements OfferedCourseStatus {
  const factory _OfferedCourseStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<OfferedCourseModel>? result}) = _$_OfferedCourseStatus;

  factory _OfferedCourseStatus.fromJson(Map<String, dynamic> json) =
      _$_OfferedCourseStatus.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<OfferedCourseModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_OfferedCourseStatusCopyWith<_$_OfferedCourseStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferedCourseModel _$OfferedCourseModelFromJson(Map<String, dynamic> json) {
  return _OfferedCourseModel.fromJson(json);
}

/// @nodoc
mixin _$OfferedCourseModel {
  String? get id => throw _privateConstructorUsedError;
  String? get course => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferedCourseModelCopyWith<OfferedCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedCourseModelCopyWith<$Res> {
  factory $OfferedCourseModelCopyWith(
          OfferedCourseModel value, $Res Function(OfferedCourseModel) then) =
      _$OfferedCourseModelCopyWithImpl<$Res, OfferedCourseModel>;
  @useResult
  $Res call(
      {String? id,
      String? course,
      String? department,
      int? semester,
      int? year});
}

/// @nodoc
class _$OfferedCourseModelCopyWithImpl<$Res, $Val extends OfferedCourseModel>
    implements $OfferedCourseModelCopyWith<$Res> {
  _$OfferedCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? course = freezed,
    Object? department = freezed,
    Object? semester = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferedCourseModelCopyWith<$Res>
    implements $OfferedCourseModelCopyWith<$Res> {
  factory _$$_OfferedCourseModelCopyWith(_$_OfferedCourseModel value,
          $Res Function(_$_OfferedCourseModel) then) =
      __$$_OfferedCourseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? course,
      String? department,
      int? semester,
      int? year});
}

/// @nodoc
class __$$_OfferedCourseModelCopyWithImpl<$Res>
    extends _$OfferedCourseModelCopyWithImpl<$Res, _$_OfferedCourseModel>
    implements _$$_OfferedCourseModelCopyWith<$Res> {
  __$$_OfferedCourseModelCopyWithImpl(
      _$_OfferedCourseModel _value, $Res Function(_$_OfferedCourseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? course = freezed,
    Object? department = freezed,
    Object? semester = freezed,
    Object? year = freezed,
  }) {
    return _then(_$_OfferedCourseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_OfferedCourseModel
    with DiagnosticableTreeMixin
    implements _OfferedCourseModel {
  const _$_OfferedCourseModel(
      {this.id, this.course, this.department, this.semester, this.year});

  factory _$_OfferedCourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfferedCourseModelFromJson(json);

  @override
  final String? id;
  @override
  final String? course;
  @override
  final String? department;
  @override
  final int? semester;
  @override
  final int? year;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OfferedCourseModel(id: $id, course: $course, department: $department, semester: $semester, year: $year)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OfferedCourseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('course', course))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('semester', semester))
      ..add(DiagnosticsProperty('year', year));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferedCourseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, course, department, semester, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferedCourseModelCopyWith<_$_OfferedCourseModel> get copyWith =>
      __$$_OfferedCourseModelCopyWithImpl<_$_OfferedCourseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferedCourseModelToJson(
      this,
    );
  }
}

abstract class _OfferedCourseModel implements OfferedCourseModel {
  const factory _OfferedCourseModel(
      {final String? id,
      final String? course,
      final String? department,
      final int? semester,
      final int? year}) = _$_OfferedCourseModel;

  factory _OfferedCourseModel.fromJson(Map<String, dynamic> json) =
      _$_OfferedCourseModel.fromJson;

  @override
  String? get id;
  @override
  String? get course;
  @override
  String? get department;
  @override
  int? get semester;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_OfferedCourseModelCopyWith<_$_OfferedCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
