import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:http/http.dart' as http;
import 'package:sust_app/components/post.dart';

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class Status {
  String? time;
  String? status;
  List<Result>? result;

  Status({this.time, this.status, this.result});

  Status.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    status = json['status'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['status'] = this.status;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  int? code;
  String? floor;
  String? id;
  String? letterCode;
  String? name;

  Result({this.code, this.floor, this.id, this.letterCode, this.name});

  Result.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    floor = json['floor'];
    id = json['id'];
    letterCode = json['letter_code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['floor'] = this.floor;
    data['id'] = this.id;
    data['letter_code'] = this.letterCode;
    data['name'] = this.name;
    return data;
  }
}

class _DepartmentState extends State<Department> {
  int _selectedIndex = 0;
  late Future<List<String>> departments;
  late List<Widget> pages;
  String name = 'Departments';

  Future<List<String>> getDepartment() async {
    final http.Response response =
        await post('''SELECT name AS name FROM department''');

    Future<List<String>> departments = Future.value([]);
    List<dynamic> user = jsonDecode(response.body)[0]['result'];
    for (dynamic i in user) {
      final list = await departments;
      list.add(i['name']);
      departments = Future.value(list);
    }
    return departments;
  }

  Future<Result> getDepartmentDetails(String departmentName) async {
    final http.Response response = await post('''SELECT * FROM department
                  WHERE name = "$departmentName"''');

    return Status.fromJson(jsonDecode(response.body)[0]).result![0];
  }

  @override
  void initState() {
    super.initState();
    departments = getDepartment();
    pages = [body(context, departments)];
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: GestureDetector(
          child: Text(
            name,
          ),
          onTap: () {
            setState(() {
              _selectedIndex = 0;
              name = 'Departments';
              if (pages.length > 1) {
                pages.removeLast();
              }
            });
          },
        ),
        commandBar: CommandBar(
          isCompact: true,
          mainAxisAlignment: MainAxisAlignment.end,
          overflowBehavior: CommandBarOverflowBehavior.noWrap,
          primaryItems: [
            CommandBarBuilderItem(
              builder: (context, mode, w) => Tooltip(
                message: "Add a new department",
                child: w,
              ),
              wrappedItem: CommandBarButton(
                onPressed: () {
                  setState(() {
                    pages = [body(context, departments)];

                    pages.add(AddDepartment(
                      onPressed: () {
                        setState(() {
                          departments = getDepartment();
                          pages = [body(context, departments)];
                          _selectedIndex = 0;
                          name = 'Departments';
                        });
                      },
                    ));
                    _selectedIndex = 1;
                    name = 'Departments > Add department';
                  });
                },
                label: const Text('Add department'),
                icon: const Icon(FluentIcons.add),
              ),
            ),
          ],
        ),
      ),
      content: pages[_selectedIndex],
    );
  }

  FutureBuilder<List<String>> body(
      BuildContext context, Future<List<String>> departments) {
    return FutureBuilder<List<String>>(
        future: departments,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: snapshot.data!
                  .map<Widget>(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Card(
                        padding: const EdgeInsets.all(5),
                        child: ListTile(
                          title: Text(e),
                          onPressed: () {
                            setState(() {
                              pages.add(postPage(context, e));
                              name = 'Departments > $e';
                              _selectedIndex = 1;
                            });
                          },
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          }
          return const Center(
            child: ProgressBar(),
          );
        });
  }

  Widget postPage(BuildContext context, String name) {
    return ScaffoldPage(
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: FutureBuilder<Result>(
          future: getDepartmentDetails(name),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(children: [
                Text(
                  'Code: ${snapshot.data!.code}',
                  style: FluentTheme.of(context).typography.caption,
                ),
                Text(
                  'Floor: ${snapshot.data!.floor}',
                  style: FluentTheme.of(context).typography.caption,
                ),
                Text(
                  'ID: ${snapshot.data!.id}',
                  style: FluentTheme.of(context).typography.caption,
                ),
                Text(
                  'Letter Code: ${snapshot.data!.letterCode}',
                  style: FluentTheme.of(context).typography.caption,
                ),
                Text(
                  'Name: ${snapshot.data!.name}',
                  style: FluentTheme.of(context).typography.caption,
                ),
              ]);
            } else {
              return const Center(
                child: ProgressBar(),
              );
            }
          },
        ),
      ),
    );
  }
}

class AddDepartment extends StatefulWidget {
  const AddDepartment({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  int numberBoxValue = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController letterCodeController = TextEditingController();

  Future<String> createDepartment(
      int code, String name, String floor, String letterCode) async {
    final http.Response response = await post(
        '''CREATE department:$letterCode SET letter_code = $letterCode, code = $code, name = "$name", floor = "$floor"''');
    return jsonDecode(response.body)[0]['status'];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Add a new department'),
              const SizedBox(height: 20),
              TextFormBox(
                controller: nameController,
                placeholder: 'Name',
              ),
              const SizedBox(height: 20),
              NumberBox(
                value: numberBoxValue,
                min: 100,
                max: 999,
                onChanged: (int? n) {
                  n != null
                      ? setState(() {
                          numberBoxValue = n;
                        })
                      : null;
                },
                mode: SpinButtonPlacementMode.inline,
              ),
              const SizedBox(height: 20),
              TextFormBox(
                controller: floorController,
                placeholder: 'Floor',
              ),
              const SizedBox(height: 20),
              TextFormBox(
                controller: letterCodeController,
                placeholder: 'Letter Code',
              ),
              const SizedBox(height: 20),
              Button(
                onPressed: () async {
                  await createDepartment(numberBoxValue, nameController.text,
                          floorController.text, letterCodeController.text)
                      .then((value) => print(value));
                  widget.onPressed!();
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
