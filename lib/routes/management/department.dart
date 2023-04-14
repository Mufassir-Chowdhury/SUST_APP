import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:http/http.dart' as http;

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  late Future<List<String>> departments;
  Future<List<String>> getDepartment() async {
    final http.Response response = await http.post(
        Uri.parse("http://localhost:8000/sql"),
        body: utf8.encode('''SELECT name AS name FROM department'''),
        headers: {
          'Accept': 'application/json',
          'NS': 'test',
          'DB': 'test',
          'Authorization': 'Basic cm9vdDpyb290',
        });
    Future<List<String>> departments = Future.value([]);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      List<dynamic> user = jsonDecode(response.body);
      for (dynamic i in user[0]['result']) {
        final list = await departments;
        list.add(i['name']);
        departments = Future.value(list);
      }
    } else {
      print(response.reasonPhrase);
    }
    return departments;
  }

  @override
  void initState() {
    super.initState();
    departments = getDepartment();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Notices'),
      ),
      content: FutureBuilder<List<String>>(
          future: departments,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: snapshot.data!
                    .map<Widget>((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Card(
                            padding: const EdgeInsets.all(5),
                            child: ListTile(
                              title: Text(e),
                            ),
                          ),
                        ))
                    .toList(),
              );
            }
            return const Center(
              child: material.LinearProgressIndicator(),
            );
          }),
    );
  }
}
