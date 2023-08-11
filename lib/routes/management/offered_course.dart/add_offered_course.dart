import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/database_models/offered_course/offered_course_model.dart';

class AddOfferedCourse extends StatefulWidget {
  const AddOfferedCourse({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddOfferedCourse> createState() => _AddOfferedCourseState();
}

class _AddOfferedCourseState extends State<AddOfferedCourse> {
  Future<List<ListModel>> loadDepartments() async {
    return DepartmentModel.getListTile();
  }

  Future<List<ListModel>> loadCourses() async {
    return CourseModel.getListTile();
  }

  @override
  void initState() {
    super.initState();
    departments = loadDepartments();
    courses = loadCourses();
  }

  late Future<List<ListModel>> departments;
  late Future<List<ListModel>> courses;

  int semesterBoxValue = 100;
  int yearBoxValue = 1;
  bool errorFound = false;
  String errorMessage = '';
  String? departmentSelected;
  String? courseSelected;

  TextEditingController departmentController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        FutureBuilder<List<List<ListModel>>>(
            future: Future.wait([departments, courses]),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text('Offer a new course'),
                      const SizedBox(height: 20),
                      AutoSuggestBox<String>(
                        placeholder: 'Department',
                        controller: departmentController,
                        items: snapshot.data![0].map((department) {
                          return AutoSuggestBoxItem<String>(
                              value: department.id,
                              label: department.title!,
                              onFocusChange: (focused) {
                                if (focused) {
                                  debugPrint('Focused $department');
                                }
                              });
                        }).toList(),
                        onSelected: (item) {
                          setState(() => departmentSelected = item.value);
                        },
                      ),
                      const SizedBox(height: 20),
                      AutoSuggestBox<String>(
                        placeholder: 'Course',
                        controller: courseController,
                        items: snapshot.data![1].map((course) {
                          return AutoSuggestBoxItem<String>(
                              value: course.id,
                              label: course.title!,
                              onFocusChange: (focused) {
                                if (focused) {
                                  debugPrint('Focused $course');
                                }
                              });
                        }).toList(),
                        onSelected: (item) {
                          setState(() => courseSelected = item.value);
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text('Semester'),
                      NumberBox(
                        placeholder: 'Semester',
                        value: semesterBoxValue,
                        min: 1,
                        max: 12,
                        onChanged: (int? n) {
                          n != null
                              ? setState(() {
                                  semesterBoxValue = n;
                                })
                              : null;
                        },
                        mode: SpinButtonPlacementMode.inline,
                      ),
                      const SizedBox(height: 20),
                      const Text('Year'),
                      NumberBox(
                        placeholder: 'Year',
                        value: yearBoxValue,
                        min: 1000,
                        max: 9999,
                        onChanged: (int? n) {
                          n != null
                              ? setState(() {
                                  yearBoxValue = n;
                                })
                              : null;
                        },
                        mode: SpinButtonPlacementMode.inline,
                      ),
                      const SizedBox(height: 20),
                      Button(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            OfferedCourseModel addOfferedCourseModel =
                                OfferedCourseModel(
                              course: courseSelected,
                              department: departmentSelected,
                              semester: semesterBoxValue,
                              year: yearBoxValue,
                            );
                            try {
                              await OfferedCourseModel.create(
                                  addOfferedCourseModel);
                              widget.onPressed!();
                            } catch (e) {
                              setState(() {
                                errorFound = true;
                                errorMessage = e.toString();
                              });
                            }
                          }
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                );
              }
              return const Center(
                child: ProgressBar(),
              );
            }),
        errorFound
            ? Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              )
            : Container(),
      ],
    );
  }
}
