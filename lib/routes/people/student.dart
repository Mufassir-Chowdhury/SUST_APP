import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/management/department/add_department.dart';
import 'package:sust_app/routes/people/student_details.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  int _selectedIndex = 0;
  late Future<List<StudentModel?>> students;
  late List<Widget> pages;
  String root = 'Student';
  String title = 'Student';

  @override
  void initState() {
    super.initState();
    students = StudentModel.getStudentNames();
    pages = [
      SimpleListBuilder<StudentModel>(
          nameList: StudentModel.getStudentNames(),
          onPressed: (name, id) {
            setState(() {
              pages.add(StudentDetails(id: id));
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
              SimpleListBuilder<StudentModel>(
                  nameList: StudentModel.getStudentNames(),
                  onPressed: (name, id) {
                    setState(() {
                      pages.add(StudentDetails(id: id));
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
              SimpleListBuilder<StudentModel>(
                  nameList: StudentModel.getStudentNames(),
                  onPressed: (name, id) {
                    setState(() {
                      pages.add(StudentDetails(id: id));
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
          students = StudentModel.getStudentNames();
          pages = [
            SimpleListBuilder<StudentModel>(
              nameList: StudentModel.getStudentNames(),
              onPressed: (name, id) {
                setState(() {
                  pages.add(StudentDetails(id: id));
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
