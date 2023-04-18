import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';
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
  String name = 'Departments';

  @override
  void initState() {
    super.initState();
    departments = DepartmentModel.getDepartmentNames();
    pages = [body(context, departments)];
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: SizedBox(
        width: 1000,
        child: PageHeader(
          title: GestureDetector(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
            ).animate().fade(duration: 500.ms, delay: 200.ms).slide(),
            onTap: () {
              setState(() {
                _selectedIndex = 0;
                name = 'Departments';
                pages = [body(context, departments)];
              });
            },
          ),
          commandBar: SizedBox(
            width: 200,
            child: CommandBar(
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
                              departments =
                                  DepartmentModel.getDepartmentNames();
                              pages = [body(context, departments)];
                              _selectedIndex = 0;
                              name = 'Departments';
                            });
                          },
                        ).animate().fade().slideY(
                            begin: .25,
                            end: 0,
                            duration: 400.ms,
                            curve: Curves.easeOut));
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
        ),
      ),
      content: pages[_selectedIndex],
    );
  }

  FutureBuilder<List<String?>> body(
      BuildContext context, Future<List<String?>> departments) {
    return FutureBuilder<List<String?>>(
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
                          title: Text(e!),
                          onPressed: () {
                            setState(() {
                              pages.add(DepartmentDetails(name: e));
                              name = 'Departments > $e';
                              _selectedIndex = 1;
                            });
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
  }
}
