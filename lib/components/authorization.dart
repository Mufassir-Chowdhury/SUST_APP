import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:sust_app/components/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Authorization {
  final bool success;
  final String? scope;
  final String? id;
  const Authorization({required this.success, this.scope, this.id});

  static login(String id, String password) async {
    final http.Response response1 = await signin(
        '''{"ns": "test", "db": "test", "sc": "teacher", "email": "$id", "password": "$password"}''');
    final http.Response response2 = await signin(
        '''{"ns": "test", "db": "test", "sc": "student", "email": "$id", "password": "$password"}''');
    if (jsonDecode(response1.body)['code'] == 200) {
      final jwt = JWT.decode(jsonDecode(response1.body)['token']);
      return Authorization(
        success: true,
        scope: jwt.payload['SC'],
        id: jwt.payload['ID'],
      );
    } else if (jsonDecode(response2.body)['code'] == 200) {
      final jwt = JWT.decode(jsonDecode(response2.body)['token']);
      return Authorization(
        success: true,
        scope: jwt.payload['SC'],
        id: jwt.payload['ID'],
      );
    } else {
      return const Authorization(
        success: false,
        scope: '',
        id: '',
      );
    }
  }
}
