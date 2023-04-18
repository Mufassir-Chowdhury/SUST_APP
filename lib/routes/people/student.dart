import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';
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
  late Future<List<String?>> students;
  late List<Widget> pages;
  String name = 'Student';

  @override
  void initState() {
    super.initState();
    students = StudentModel.getStudentNames();
    pages = [body(context, students)];
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
                name = 'Student';
                pages = [body(context, students)];
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
                    message: "Add a new person",
                    child: w,
                  ),
                  wrappedItem: CommandBarButton(
                    onPressed: () {
                      setState(() {
                        pages = [body(context, students)];

                        pages.add(AddDepartment(
                          onPressed: () {
                            setState(() {
                              students = StudentModel.getStudentNames();
                              pages = [body(context, students)];
                              _selectedIndex = 0;
                              name = 'Student';
                            });
                          },
                        ).animate().fade().slideY(
                            begin: .25,
                            end: 0,
                            duration: 400.ms,
                            curve: Curves.easeOut));
                        _selectedIndex = 1;
                        name = 'Student > Add Student';
                      });
                    },
                    label: const Text('Add Student'),
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
      BuildContext context, Future<List<String?>> students) {
    return FutureBuilder<List<String?>>(
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
                          title: Text(e!),
                          onPressed: () {
                            setState(() {
                              pages.add(StudentDetails(name: e));
                              name = 'Student > $e';
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
