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
