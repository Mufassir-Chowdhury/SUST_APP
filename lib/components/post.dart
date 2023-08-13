import 'dart:convert';
import "package:http/http.dart" as http;

post(request) async {
  return await http.post(Uri.parse("http://localhost:8000/sql"),
      body: utf8.encode(request),
      headers: {
        'Accept': 'application/json',
        'NS': 'test',
        'DB': 'test',
        'Authorization': 'Basic cm9vdDpyb290'
      });
}

signin(request) async {
  return await http.post(Uri.parse("http://localhost:8000/signin"),
      body: utf8.encode(request),
      headers: {
        'Accept': 'application/json',
      });
}
