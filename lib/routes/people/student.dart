import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/management/department/add_department.dart';
import 'package:sust_app/routes/management/department/department_details.dart';
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
    pages = [body(context, students)];
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
            pages = [body(context, students)];
          });
        },
        onAddPress: () {
          setState(() {
            pages = [body(context, students)];

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
          pages = [body(context, students)];
          _selectedIndex = 0;
          title = 'Student';
        });
      },
    );
  }

  FutureBuilder<List<StudentModel?>> body(
      BuildContext context, Future<List<StudentModel?>> students) {
    return FutureBuilder<List<StudentModel?>>(
        future: students,
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
                          title: Text(e!.name!),
                          onPressed: () {
                            setState(() {
                              pages.add(StudentDetails(id: e.id!));
                              title = 'Student > ${e.name}';
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
