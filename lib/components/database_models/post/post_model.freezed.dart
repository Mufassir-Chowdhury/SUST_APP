// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostStatus _$PostStatusFromJson(Map<String, dynamic> json) {
  return _PostStatus.fromJson(json);
}

/// @nodoc
mixin _$PostStatus {
  String? get time => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<PostModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostStatusCopyWith<PostStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStatusCopyWith<$Res> {
  factory $PostStatusCopyWith(
          PostStatus value, $Res Function(PostStatus) then) =
      _$PostStatusCopyWithImpl<$Res, PostStatus>;
  @useResult
  $Res call(
      {String? time, String? status, String? detail, List<PostModel>? result});
}

/// @nodoc
class _$PostStatusCopyWithImpl<$Res, $Val extends PostStatus>
    implements $PostStatusCopyWith<$Res> {
  _$PostStatusCopyWithImpl(this._value, this._then);

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
              as List<PostModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostStatusCopyWith<$Res>
    implements $PostStatusCopyWith<$Res> {
  factory _$$_PostStatusCopyWith(
          _$_PostStatus value, $Res Function(_$_PostStatus) then) =
      __$$_PostStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time, String? status, String? detail, List<PostModel>? result});
}

/// @nodoc
class __$$_PostStatusCopyWithImpl<$Res>
    extends _$PostStatusCopyWithImpl<$Res, _$_PostStatus>
    implements _$$_PostStatusCopyWith<$Res> {
  __$$_PostStatusCopyWithImpl(
      _$_PostStatus _value, $Res Function(_$_PostStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_PostStatus(
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
              as List<PostModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PostStatus with DiagnosticableTreeMixin implements _PostStatus {
  const _$_PostStatus(
      {this.time, this.status, this.detail, final List<PostModel>? result})
      : _result = result;

  factory _$_PostStatus.fromJson(Map<String, dynamic> json) =>
      _$$_PostStatusFromJson(json);

  @override
  final String? time;
  @override
  final String? status;
  @override
  final String? detail;
  final List<PostModel>? _result;
  @override
  List<PostModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostStatus(time: $time, status: $status, detail: $detail, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostStatus'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostStatus &&
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
  _$$_PostStatusCopyWith<_$_PostStatus> get copyWith =>
      __$$_PostStatusCopyWithImpl<_$_PostStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostStatusToJson(
      this,
    );
  }
}

abstract class _PostStatus implements PostStatus {
  const factory _PostStatus(
      {final String? time,
      final String? status,
      final String? detail,
      final List<PostModel>? result}) = _$_PostStatus;

  factory _PostStatus.fromJson(Map<String, dynamic> json) =
      _$_PostStatus.fromJson;

  @override
  String? get time;
  @override
  String? get status;
  @override
  String? get detail;
  @override
  List<PostModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_PostStatusCopyWith<_$_PostStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  InfoModel? get info => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get pdf => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {InfoModel? info,
      String? id,
      String? description,
      String? pdf,
      String? name});

  $InfoModelCopyWith<$Res>? get info;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? pdf = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoModelCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InfoModel? info,
      String? id,
      String? description,
      String? pdf,
      String? name});

  @override
  $InfoModelCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$_PostModel>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? pdf = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_PostModel(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PostModel with DiagnosticableTreeMixin implements _PostModel {
  const _$_PostModel(
      {this.info, this.id, this.description, this.pdf, this.name});

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final InfoModel? info;
  @override
  final String? id;
  @override
  final String? description;
  @override
  final String? pdf;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostModel(info: $info, id: $id, description: $description, pdf: $pdf, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostModel'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pdf', pdf))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, info, id, description, pdf, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {final InfoModel? info,
      final String? id,
      final String? description,
      final String? pdf,
      final String? name}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  InfoModel? get info;
  @override
  String? get id;
  @override
  String? get description;
  @override
  String? get pdf;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return _InfoModel.fromJson(json);
}

/// @nodoc
mixin _$InfoModel {
  String? get title => throw _privateConstructorUsedError;
  String? get postedBy => throw _privateConstructorUsedError;
  String? get dateOfPost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoModelCopyWith<InfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoModelCopyWith<$Res> {
  factory $InfoModelCopyWith(InfoModel value, $Res Function(InfoModel) then) =
      _$InfoModelCopyWithImpl<$Res, InfoModel>;
  @useResult
  $Res call({String? title, String? postedBy, String? dateOfPost});
}

/// @nodoc
class _$InfoModelCopyWithImpl<$Res, $Val extends InfoModel>
    implements $InfoModelCopyWith<$Res> {
  _$InfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? postedBy = freezed,
    Object? dateOfPost = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfPost: freezed == dateOfPost
          ? _value.dateOfPost
          : dateOfPost // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoModelCopyWith<$Res> implements $InfoModelCopyWith<$Res> {
  factory _$$_InfoModelCopyWith(
          _$_InfoModel value, $Res Function(_$_InfoModel) then) =
      __$$_InfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? postedBy, String? dateOfPost});
}

/// @nodoc
class __$$_InfoModelCopyWithImpl<$Res>
    extends _$InfoModelCopyWithImpl<$Res, _$_InfoModel>
    implements _$$_InfoModelCopyWith<$Res> {
  __$$_InfoModelCopyWithImpl(
      _$_InfoModel _value, $Res Function(_$_InfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? postedBy = freezed,
    Object? dateOfPost = freezed,
  }) {
    return _then(_$_InfoModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfPost: freezed == dateOfPost
          ? _value.dateOfPost
          : dateOfPost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_InfoModel with DiagnosticableTreeMixin implements _InfoModel {
  const _$_InfoModel({this.title, this.postedBy, this.dateOfPost});

  factory _$_InfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfoModelFromJson(json);

  @override
  final String? title;
  @override
  final String? postedBy;
  @override
  final String? dateOfPost;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoModel(title: $title, postedBy: $postedBy, dateOfPost: $dateOfPost)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('postedBy', postedBy))
      ..add(DiagnosticsProperty('dateOfPost', dateOfPost));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.dateOfPost, dateOfPost) ||
                other.dateOfPost == dateOfPost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, postedBy, dateOfPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoModelCopyWith<_$_InfoModel> get copyWith =>
      __$$_InfoModelCopyWithImpl<_$_InfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoModelToJson(
      this,
    );
  }
}

abstract class _InfoModel implements InfoModel {
  const factory _InfoModel(
      {final String? title,
      final String? postedBy,
      final String? dateOfPost}) = _$_InfoModel;

  factory _InfoModel.fromJson(Map<String, dynamic> json) =
      _$_InfoModel.fromJson;

  @override
  String? get title;
  @override
  String? get postedBy;
  @override
  String? get dateOfPost;
  @override
  @JsonKey(ignore: true)
  _$$_InfoModelCopyWith<_$_InfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
