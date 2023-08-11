// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseStatus _$CourseStatusFromJson(Map<String, dynamic> json) {
  return _CourseStatus.fromJson(json);
}

/// @nodoc
mixin _$CourseStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<CourseModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseStatusCopyWith<CourseStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStatusCopyWith<$Res> {
  factory $CourseStatusCopyWith(
          CourseStatus value, $Res Function(CourseStatus) then) =
      _$CourseStatusCopyWithImpl<$Res, CourseStatus>;
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<CourseModel>? result});
}

/// @nodoc
class _$CourseStatusCopyWithImpl<$Res, $Val extends CourseStatus>
    implements $CourseStatusCopyWith<$Res> {
  _$CourseStatusCopyWithImpl(this._value, this._then);

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
              as List<CourseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseStatusCopyWith<$Res>
    implements $CourseStatusCopyWith<$Res> {
  factory _$$_CourseStatusCopyWith(
          _$_CourseStatus value, $Res Function(_$_CourseStatus) then) =
      __$$_CourseStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? status,
      String? detail,
      List<CourseModel>? result});
}

/// @nodoc
class __$$_CourseStatusCopyWithImpl<$Res>
    extends _$CourseStatusCopyWithImpl<$Res, _$_CourseStatus>
    implements _$$_CourseStatusCopyWith<$Res> {
  __$$_CourseStatusCopyWithImpl(
      _$_CourseStatus _value, $Res Function(_$_CourseStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_CourseStatus(
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
              as List<CourseModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CourseStatus with DiagnosticableTreeMixin implements _CourseStatus {
  const _$_CourseStatus(
      {this.time, this.status, this.detail, final List<CourseModel>? result})
      : _result = result;

  factory _$_CourseStatus.fromJson(Map<String, dynamic> json) =>
      _$$_CourseStatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<CourseModel>? _result;
  @override
  List<CourseModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseStatus &&
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
  _$$_CourseStatusCopyWith<_$_CourseStatus> get copyWith =>
      __$$_CourseStatusCopyWithImpl<_$_CourseStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseStatusToJson(
      this,
    );
  }
}

abstract class _CourseStatus implements CourseStatus {
  const factory _CourseStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<CourseModel>? result}) = _$_CourseStatus;

  factory _CourseStatus.fromJson(Map<String, dynamic> json) =
      _$_CourseStatus.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<CourseModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_CourseStatusCopyWith<_$_CourseStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String? get id => throw _privateConstructorUsedError;
  double? get credit => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<SyllabusModel>? get syllabus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String? id,
      double? credit,
      String? name,
      String? department,
      String? type,
      List<SyllabusModel>? syllabus});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? credit = freezed,
    Object? name = freezed,
    Object? department = freezed,
    Object? type = freezed,
    Object? syllabus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      syllabus: freezed == syllabus
          ? _value.syllabus
          : syllabus // ignore: cast_nullable_to_non_nullable
              as List<SyllabusModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      double? credit,
      String? name,
      String? department,
      String? type,
      List<SyllabusModel>? syllabus});
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$_CourseModel>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? credit = freezed,
    Object? name = freezed,
    Object? department = freezed,
    Object? type = freezed,
    Object? syllabus = freezed,
  }) {
    return _then(_$_CourseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      syllabus: freezed == syllabus
          ? _value._syllabus
          : syllabus // ignore: cast_nullable_to_non_nullable
              as List<SyllabusModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CourseModel with DiagnosticableTreeMixin implements _CourseModel {
  const _$_CourseModel(
      {this.id,
      this.credit,
      this.name,
      this.department,
      this.type,
      final List<SyllabusModel>? syllabus})
      : _syllabus = syllabus;

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  final String? id;
  @override
  final double? credit;
  @override
  final String? name;
  @override
  final String? department;
  @override
  final String? type;
  final List<SyllabusModel>? _syllabus;
  @override
  List<SyllabusModel>? get syllabus {
    final value = _syllabus;
    if (value == null) return null;
    if (_syllabus is EqualUnmodifiableListView) return _syllabus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseModel(id: $id, credit: $credit, name: $name, department: $department, type: $type, syllabus: $syllabus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('credit', credit))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('syllabus', syllabus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._syllabus, _syllabus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, credit, name, department,
      type, const DeepCollectionEquality().hash(_syllabus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {final String? id,
      final double? credit,
      final String? name,
      final String? department,
      final String? type,
      final List<SyllabusModel>? syllabus}) = _$_CourseModel;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  String? get id;
  @override
  double? get credit;
  @override
  String? get name;
  @override
  String? get department;
  @override
  String? get type;
  @override
  List<SyllabusModel>? get syllabus;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SyllabusModel _$SyllabusModelFromJson(Map<String, dynamic> json) {
  return _SyllabusModel.fromJson(json);
}

/// @nodoc
mixin _$SyllabusModel {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get topics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyllabusModelCopyWith<SyllabusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyllabusModelCopyWith<$Res> {
  factory $SyllabusModelCopyWith(
          SyllabusModel value, $Res Function(SyllabusModel) then) =
      _$SyllabusModelCopyWithImpl<$Res, SyllabusModel>;
  @useResult
  $Res call({String? title, List<String>? topics});
}

/// @nodoc
class _$SyllabusModelCopyWithImpl<$Res, $Val extends SyllabusModel>
    implements $SyllabusModelCopyWith<$Res> {
  _$SyllabusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SyllabusModelCopyWith<$Res>
    implements $SyllabusModelCopyWith<$Res> {
  factory _$$_SyllabusModelCopyWith(
          _$_SyllabusModel value, $Res Function(_$_SyllabusModel) then) =
      __$$_SyllabusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<String>? topics});
}

/// @nodoc
class __$$_SyllabusModelCopyWithImpl<$Res>
    extends _$SyllabusModelCopyWithImpl<$Res, _$_SyllabusModel>
    implements _$$_SyllabusModelCopyWith<$Res> {
  __$$_SyllabusModelCopyWithImpl(
      _$_SyllabusModel _value, $Res Function(_$_SyllabusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? topics = freezed,
  }) {
    return _then(_$_SyllabusModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SyllabusModel with DiagnosticableTreeMixin implements _SyllabusModel {
  const _$_SyllabusModel({this.title, final List<String>? topics})
      : _topics = topics;

  factory _$_SyllabusModel.fromJson(Map<String, dynamic> json) =>
      _$$_SyllabusModelFromJson(json);

  @override
  final String? title;
  final List<String>? _topics;
  @override
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SyllabusModel(title: $title, topics: $topics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SyllabusModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('topics', topics));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SyllabusModel &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SyllabusModelCopyWith<_$_SyllabusModel> get copyWith =>
      __$$_SyllabusModelCopyWithImpl<_$_SyllabusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SyllabusModelToJson(
      this,
    );
  }
}

abstract class _SyllabusModel implements SyllabusModel {
  const factory _SyllabusModel(
      {final String? title, final List<String>? topics}) = _$_SyllabusModel;

  factory _SyllabusModel.fromJson(Map<String, dynamic> json) =
      _$_SyllabusModel.fromJson;

  @override
  String? get title;
  @override
  List<String>? get topics;
  @override
  @JsonKey(ignore: true)
  _$$_SyllabusModelCopyWith<_$_SyllabusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
