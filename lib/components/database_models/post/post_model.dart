import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostStatus with _$PostStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostStatus({
    String? time,
    String? status,
    String? detail,
    List<PostModel>? result,
  }) = _PostStatus;

  factory PostStatus.fromJson(Map<String, Object?> json) =>
      _$PostStatusFromJson(json);
}

@freezed
class PostModel with _$PostModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostModel({
    InfoModel? info,
    String? id,
    String? description,
    String? pdf,
    String? name,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);

  static Future<List<PostModel>> getPosts() async {
    final http.Response response =
        await post('''SELECT *, info.posted_by.name as name FROM post;''');
    return PostStatus.fromJson(jsonDecode(response.body)[0]).result!;
  }
  // static Future<List<ListModel>> getListTile(String? department) async {
  //   final http.Response response = await post(
  //       '''SELECT info.title AS title, department.name AS subtitle, id AS id FROM Post;''');

  //   return ListStatus.fromJson(jsonDecode(response.body)[0]).result!;
  // }

  // static Future<PostModel> getDetails(String id) async {
  //   final http.Response response = await post('''SELECT * FROM $id''');
  //   return PostStatus.fromJson(jsonDecode(response.body)[0]).result![0];
  // }

  // static Future<String> create(PostModel Post) async {
  //   final http.Response response = await post(
  //       '''CREATE Post:${Post.id} CONTENT ${jsonEncode(Post.toJson()).toString()}''');
  //   PostStatus status = PostStatus.fromJson(jsonDecode(response.body)[0]);
  //   if (status.status == 'ERR') {
  //     if (status.detail!.contains('Database record') &&
  //         status.detail!.contains('already exists')) {
  //       throw 'Department letter code already exists';
  //     } else if (status.detail!
  //         .contains('Database index `minor_course_code` already contains')) {
  //       throw 'Minor course code already exists';
  //     } else if (status.detail!
  //         .contains('Database index `name` already contains')) {
  //       throw 'Department name already exists';
  //     } else if (status.detail!
  //         .contains('Database index `code` already contains')) {
  //       throw 'Department code already exists';
  //     }
  //   }
  //   return status.status!;
  // }
}

@freezed
class InfoModel with _$InfoModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory InfoModel({
    String? title,
    String? postedBy,
    String? date,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, Object?> json) =>
      _$InfoModelFromJson(json);
}
