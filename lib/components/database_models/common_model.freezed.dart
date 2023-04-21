// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListStatus _$ListStatusFromJson(Map<String, dynamic> json) {
  return _ListStatus.fromJson(json);
}

/// @nodoc
mixin _$ListStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<ListModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListStatusCopyWith<ListStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStatusCopyWith<$Res> {
  factory $ListStatusCopyWith(
          ListStatus value, $Res Function(ListStatus) then) =
      _$ListStatusCopyWithImpl<$Res, ListStatus>;
  @useResult
  $Res call(
      {String? time, String? status, String? detail, List<ListModel>? result});
}

/// @nodoc
class _$ListStatusCopyWithImpl<$Res, $Val extends ListStatus>
    implements $ListStatusCopyWith<$Res> {
  _$ListStatusCopyWithImpl(this._value, this._then);

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
              as List<ListModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListStatusCopyWith<$Res>
    implements $ListStatusCopyWith<$Res> {
  factory _$$_ListStatusCopyWith(
          _$_ListStatus value, $Res Function(_$_ListStatus) then) =
      __$$_ListStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time, String? status, String? detail, List<ListModel>? result});
}

/// @nodoc
class __$$_ListStatusCopyWithImpl<$Res>
    extends _$ListStatusCopyWithImpl<$Res, _$_ListStatus>
    implements _$$_ListStatusCopyWith<$Res> {
  __$$_ListStatusCopyWithImpl(
      _$_ListStatus _value, $Res Function(_$_ListStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ListStatus(
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
              as List<ListModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ListStatus with DiagnosticableTreeMixin implements _ListStatus {
  const _$_ListStatus(
      {this.time, this.status, this.detail, final List<ListModel>? result})
      : _result = result;

  factory _$_ListStatus.fromJson(Map<String, dynamic> json) =>
      _$$_ListStatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<ListModel>? _result;
  @override
  List<ListModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListStatus &&
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
  _$$_ListStatusCopyWith<_$_ListStatus> get copyWith =>
      __$$_ListStatusCopyWithImpl<_$_ListStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListStatusToJson(
      this,
    );
  }
}

abstract class _ListStatus implements ListStatus {
  const factory _ListStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<ListModel>? result}) = _$_ListStatus;

  factory _ListStatus.fromJson(Map<String, dynamic> json) =
      _$_ListStatus.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<ListModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ListStatusCopyWith<_$_ListStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

ListModel _$ListModelFromJson(Map<String, dynamic> json) {
  return _ListModel.fromJson(json);
}

/// @nodoc
mixin _$ListModel {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListModelCopyWith<ListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListModelCopyWith<$Res> {
  factory $ListModelCopyWith(ListModel value, $Res Function(ListModel) then) =
      _$ListModelCopyWithImpl<$Res, ListModel>;
  @useResult
  $Res call({String? title, String? subtitle, String? id});
}

/// @nodoc
class _$ListModelCopyWithImpl<$Res, $Val extends ListModel>
    implements $ListModelCopyWith<$Res> {
  _$ListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListModelCopyWith<$Res> implements $ListModelCopyWith<$Res> {
  factory _$$_ListModelCopyWith(
          _$_ListModel value, $Res Function(_$_ListModel) then) =
      __$$_ListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? subtitle, String? id});
}

/// @nodoc
class __$$_ListModelCopyWithImpl<$Res>
    extends _$ListModelCopyWithImpl<$Res, _$_ListModel>
    implements _$$_ListModelCopyWith<$Res> {
  __$$_ListModelCopyWithImpl(
      _$_ListModel _value, $Res Function(_$_ListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ListModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ListModel with DiagnosticableTreeMixin implements _ListModel {
  const _$_ListModel({this.title, this.subtitle, this.id});

  factory _$_ListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListModelFromJson(json);

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListModel(title: $title, subtitle: $subtitle, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListModelCopyWith<_$_ListModel> get copyWith =>
      __$$_ListModelCopyWithImpl<_$_ListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListModelToJson(
      this,
    );
  }
}

abstract class _ListModel implements ListModel {
  const factory _ListModel(
      {final String? title,
      final String? subtitle,
      final String? id}) = _$_ListModel;

  factory _ListModel.fromJson(Map<String, dynamic> json) =
      _$_ListModel.fromJson;

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ListModelCopyWith<_$_ListModel> get copyWith =>
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
