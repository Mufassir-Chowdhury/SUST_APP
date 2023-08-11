import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  Future<List<ListModel>> loadDepartments() async {
    return DepartmentModel.getListTile();
  }

  @override
  void initState() {
    super.initState();
    departments = loadDepartments();
  }

  late Future<List<ListModel>> departments;

  double creditBoxValue = 1;
  String? departmentSelected;
  String? typeSelected;

  bool errorFound = false;
  String errorMessage = '';

  List<String> type = <String>[
    'Lab',
    'Theory',
  ];
  TextEditingController nameController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        FutureBuilder<List<ListModel>>(
            future: departments,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text('Add a new course'),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: nameController,
                        placeholder: 'Name',
                        validator: (value) {
                          if (value == null || value.trim().length < 5) {
                            return 'The name must be of at least length 5';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text('Code'),
                      TextFormBox(
                        controller: codeController,
                        placeholder: 'Code',
                        validator: (value) {
                          if (value == null || value.trim().length < 6) {
                            return 'The code must be of at least length 6';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text('Credit'),
                      NumberBox(
                        placeholder: 'Credit',
                        value: creditBoxValue,
                        min: 1,
                        max: 4,
                        onChanged: (double? n) {
                          n != null
                              ? setState(() {
                                  creditBoxValue = n;
                                })
                              : null;
                        },
                        mode: SpinButtonPlacementMode.inline,
                      ),
                      const SizedBox(height: 20),
                      AutoSuggestBox<String>(
                        placeholder: 'Department',
                        controller: departmentController,
                        items: snapshot.data!.map((department) {
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
                        placeholder: 'Type',
                        controller: typeController,
                        items: type.map((type) {
                          return AutoSuggestBoxItem<String>(
                              value: type,
                              label: type,
                              onFocusChange: (focused) {
                                if (focused) {
                                  debugPrint('Focused $type');
                                }
                              });
                        }).toList(),
                        onSelected: (item) {
                          setState(() => typeSelected = item.value);
                        },
                      ),
                      const SizedBox(height: 20),
                      Button(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            CourseModel courseModel = CourseModel(
                              id: codeController.text,
                              name: nameController.text,
                              credit: creditBoxValue,
                              department: departmentSelected,
                              type: typeSelected,
                            );
                            try {
                              await CourseModel.create(courseModel);
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
