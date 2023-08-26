import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:provider/provider.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/profile_model.dart';

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}

class CourseRegistration extends StatefulWidget {
  const CourseRegistration({super.key});

  @override
  State<CourseRegistration> createState() => _CourseRegistrationState();
}

class _CourseRegistrationState extends State<CourseRegistration> {
  Future<List<ListModel>> loadCourses() async {
    return CourseModel.getNotTakenCourses(
        Provider.of<ProfileModel>(context, listen: false).id!,
        Provider.of<ProfileModel>(context, listen: false).department!,
        semesterSelected!,
        yearSelected!);
  }

  Future<List<ListModel>> loadTakenCourses() async {
    return CourseModel.takenCourse(
        Provider.of<ProfileModel>(context, listen: false).id!,
        semesterSelected!,
        yearSelected!);
  }

  @override
  void initState() {
    super.initState();
    courses = Future.value([]);
    takenCourses = loadTakenCourses();
  }

  late Future<List<ListModel>> courses;
  late Future<List<ListModel>> takenCourses;
  List<ListModel> selectedCourses = [];

  final MultiSelectController<dynamic> _controller = MultiSelectController();

  int? yearSelected;
  int? semesterSelected;
  final years = <int>[
    2010,
    2011,
    2012,
    2013,
    2014,
    2015,
    2016,
    2017,
    2018,
    2019,
    2020,
    2021,
    2022,
    2023,
    2024,
    2025
  ];
  final semesters = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(title: Text("Course Registration")),
      content: material.Material(
        child: ListView(
          children: [
            Row(
              children: [
                const SizedBox(width: 30),
                const Text("Year: "),
                material.DropdownButton<int>(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  isExpanded: false,
                  value: yearSelected,
                  onChanged: (int? value) {
                    setState(() {
                      yearSelected = value!;
                      if (semesterSelected != null) {
                        courses = loadCourses();
                      }
                    });
                  },
                  items: years.map<material.DropdownMenuItem<int>>((int value) {
                    return material.DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                const SizedBox(width: 60),
                const Text("Semester: "),
                material.DropdownButton<int>(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  value: semesterSelected,
                  onChanged: (int? value) {
                    setState(() {
                      semesterSelected = value!;
                      if (yearSelected != null) {
                        courses = loadCourses();
                      }
                    });
                  },
                  items: semesters
                      .map<material.DropdownMenuItem<int>>((int value) {
                    return material.DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
              ],
            ),
            FutureBuilder<List<ListModel>>(
                future: courses,
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: MultiSelectCheckList(
                              listViewSettings: ListViewSettings(
                                  separatorBuilder: (context, index) =>
                                      const material.Divider(
                                        height: 0,
                                      )),
                              controller: _controller,
                              items: List.generate(
                                snapshot.data!.length,
                                (index) => CheckListCard(
                                  value: snapshot.data![index].id,
                                  title: Text(snapshot.data![index].title!),
                                  subtitle:
                                      Text(snapshot.data![index].subtitle!),
                                ),
                              ),
                              onChange: (allSelectedItems, selectedItem) {
                                setState(() {
                                  var temp = <ListModel>[];
                                  for (var item in snapshot.data!) {
                                    if (allSelectedItems.contains(item.id)) {
                                      temp.add(item);
                                    }
                                  }
                                  selectedCourses = temp;
                                });
                              },
                            ),
                          ),
                          Button(
                              child: const material.Icon(
                                  material.Icons.arrow_right_alt),
                              onPressed: () {}),
                          Flexible(
                            child: ListView(
                              shrinkWrap: true,
                              children: selectedCourses
                                  .map((course) => ListTile(
                                        title: Text(course.title!),
                                        subtitle: Text(course.id!),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return const Text("Please select year and semester");
                }),
          ],
        ),
      ),
    );
  }
}
