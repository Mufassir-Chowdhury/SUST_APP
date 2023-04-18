import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/management/department/add_department.dart';
import 'package:sust_app/routes/management/department/department_details.dart';

// TODO fix header width

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  int _selectedIndex = 0;
  late Future<List<String?>> departments;
  late List<Widget> pages;
  String root = 'Departments';
  String title = 'Departments';

  @override
  void initState() {
    super.initState();
    departments = DepartmentModel.getDepartmentNames();
    pages = [
      SimpleListBuilder(
          departments: DepartmentModel.getDepartmentNames(),
          onPressed: (e) {
            setState(() {
              pages.add(DepartmentDetails(name: e));
              title = '$root > $e';
              _selectedIndex = 1;
            });
          })
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: Header(
        name: title,
        onHeaderPress: () {
          setState(() {
            _selectedIndex = 0;
            title = root;
            pages = [
              SimpleListBuilder(
                  departments: DepartmentModel.getDepartmentNames(),
                  onPressed: (e) {
                    setState(() {
                      pages.add(DepartmentDetails(name: e));
                      title = '$root > $e';
                      _selectedIndex = 1;
                    });
                  })
            ];
          });
        },
        onAddPress: () {
          setState(() {
            pages = [
              SimpleListBuilder(
                  departments: DepartmentModel.getDepartmentNames(),
                  onPressed: (e) {
                    setState(() {
                      pages.add(DepartmentDetails(name: e));
                      title = '$root > $e';
                      _selectedIndex = 1;
                    });
                  })
            ];

            pages.add(addDepartmentWidget(context).animate().fade().slideY(
                begin: .25, end: 0, duration: 400.ms, curve: Curves.easeOut));
            _selectedIndex = 1;
            title = '$root > Add ${root.toLowerCase()}';
          });
        },
      ),
      content: pages[_selectedIndex],
    );
  }

  AddDepartment addDepartmentWidget(BuildContext context) {
    return AddDepartment(
      onPressed: () {
        setState(() {
          departments = DepartmentModel.getDepartmentNames();
          pages = [
            SimpleListBuilder(
              departments: DepartmentModel.getDepartmentNames(),
              onPressed: (e) {
                setState(() {
                  pages.add(DepartmentDetails(name: e));
                  title = '$root > $e';
                  _selectedIndex = 1;
                });
              },
            )
          ];
          _selectedIndex = 0;
          title = root;
        });
      },
    );
  }
}

class SimpleListBuilder extends StatelessWidget {
  const SimpleListBuilder(
      {super.key, required this.departments, required this.onPressed});
  final Future<List<String?>> departments;
  final Function(String name) onPressed;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String?>>(
        future: departments,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            snapshot.data!.toList();
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: snapshot.data!
                  .map<Widget>(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Card(
                        padding: const EdgeInsets.all(5),
                        child: ListTile(
                          title: Text(e!),
                          onPressed: () {
                            onPressed(e);
                          },
                        ),
                      ),
                    ),
                  )
                  .toList()
                  .animate(interval: 100.ms)
                  .fade()
                  .slideY(
                      begin: .5,
                      end: 0,
                      duration: 500.ms,
                      delay: 200.ms,
                      curve: Curves.easeIn),
            );
          }
          return const Center(
            child: ProgressBar(),
          );
        });
    ;
  }
}
