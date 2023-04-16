import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_model.dart';
import 'package:sust_app/routes/management/department/add_department.dart';

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
      header: PageHeader(
        title: GestureDetector(
          child: Text(
            name,
          ),
          onTap: () {
            setState(() {
              _selectedIndex = 0;
              name = 'Departments';
              pages = [body(context, departments)];
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
                          departments = DepartmentModel.getDepartmentNames();
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
        child: FutureBuilder<DepartmentModel>(
          future: DepartmentModel.getDepartmentDetails(name),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return material.DataTable(
                columns: [
                  const material.DataColumn(label: Text('Name')),
                  material.DataColumn(
                      label: Text(snapshot.data!.name ?? 'N/A')),
                ],
                rows: [
                  material.DataRow(
                    cells: [
                      const material.DataCell(Text('Code')),
                      material.DataCell(Text(snapshot.data!.code.toString())),
                    ],
                  ),
                  material.DataRow(
                    cells: [
                      const material.DataCell(Text('Floor')),
                      material.DataCell(Text(snapshot.data!.floor.toString())),
                    ],
                  ),
                  material.DataRow(
                    cells: [
                      const material.DataCell(Text('Building')),
                      material.DataCell(Text(snapshot.data!.building ?? 'N/A')),
                    ],
                  ),
                  material.DataRow(
                    cells: [
                      const material.DataCell(Text('Letter Code')),
                      material.DataCell(
                          Text(snapshot.data!.letterCode ?? 'N/A')),
                    ],
                  ),
                ],
              );
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
