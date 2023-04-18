import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/management/department/add_department.dart';
import 'package:sust_app/routes/management/department/department_details.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// TODO fix header width

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  int _selectedIndex = 0;
  late Future<List<DepartmentModel?>> departments;
  late List<Widget> pages;
  String root = 'Departments';
  String title = 'Departments';

  @override
  void initState() {
    super.initState();
    departments = DepartmentModel.getDepartmentNames();
    pages = [
      SimpleListBuilder<DepartmentModel>(
          nameList: DepartmentModel.getDepartmentNames(),
          onPressed: (name, id) {
            setState(() {
              pages.add(DepartmentDetails(id: id));
              title = '$root > $name';
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
              SimpleListBuilder<DepartmentModel>(
                  nameList: DepartmentModel.getDepartmentNames(),
                  onPressed: (name, id) {
                    setState(() {
                      pages.add(DepartmentDetails(id: id));
                      title = '$root > $name';
                      _selectedIndex = 1;
                    });
                  })
            ];
          });
        },
        onAddPress: () {
          setState(() {
            pages = [
              SimpleListBuilder<DepartmentModel>(
                  nameList: DepartmentModel.getDepartmentNames(),
                  onPressed: (name, id) {
                    setState(() {
                      pages.add(DepartmentDetails(id: id));
                      title = '$root > $name';
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
            SimpleListBuilder<DepartmentModel>(
              nameList: DepartmentModel.getDepartmentNames(),
              onPressed: (name, id) {
                setState(() {
                  pages.add(DepartmentDetails(id: id));
                  title = '$root > $name';
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
