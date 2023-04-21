import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/database_models/student/student_model.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  Future<List<ListModel>> loadDepartments() async {
    return DepartmentModel.getListTile();
  }

  @override
  void initState() {
    super.initState();
    departments = loadDepartments();
  }

  bool errorFound = false;
  String errorMessage = '';
  final _formKey = GlobalKey<FormState>();

  String? departmentSelected;
  String? bloodGroupSelected;
  String? genderSelected;

  late Future<List<ListModel>> departments;

  List<String> bloodGroups = <String>[
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];

  List<String> genders = <String>[
    'Male',
    'Female',
  ];

  int sessionBoxValue = 0;
  int semesterBoxValue = 0;

  String birthday = '';

  TextEditingController idController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController personalEmailController = TextEditingController();
  TextEditingController academicEmailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController privilageController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController motherNameController = TextEditingController();
  TextEditingController hometownController = TextEditingController();

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
                      const Text('Add a new student'),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: idController,
                        placeholder: 'ID',
                        validator: (value) {
                          if (value == null || value.trim().length != 10) {
                            return 'The name must be exactly of length 10';
                          }
                          return null;
                        },
                      ),
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
                      TextFormBox(
                        controller: personalEmailController,
                        placeholder: 'Personal Email',
                        validator: (value) {
                          if (value == null || value.trim().length < 5) {
                            return 'The name must be of at least length 5';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: academicEmailController,
                        placeholder: 'Academic Email',
                        validator: (value) {
                          if (value == null || value.trim().length < 5) {
                            return 'The name must be of at least length 5';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      AutoSuggestBox<String>(
                        placeholder: 'Gender',
                        controller: genderController,
                        items: genders.map((gender) {
                          return AutoSuggestBoxItem<String>(
                              value: gender,
                              label: gender,
                              onFocusChange: (focused) {
                                if (focused) {
                                  debugPrint('Focused $gender');
                                }
                              });
                        }).toList(),
                        onSelected: (item) {
                          setState(() => genderSelected = item.value);
                        },
                      ),
                      const SizedBox(height: 20),
                      NumberBox(
                        placeholder: 'Session',
                        value: sessionBoxValue,
                        min: 100,
                        max: 999,
                        onChanged: (int? n) {
                          n != null
                              ? setState(() {
                                  sessionBoxValue = n;
                                })
                              : null;
                        },
                        mode: SpinButtonPlacementMode.inline,
                      ),
                      const SizedBox(height: 20),
                      const Text('Current Semester'),
                      NumberBox(
                        placeholder: 'Current Semester',
                        value: semesterBoxValue,
                        min: 1,
                        max: 10,
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
                      AutoSuggestBox<String>(
                        placeholder: 'Blood Group',
                        controller: bloodGroupController,
                        items: bloodGroups.map((bloodGroup) {
                          return AutoSuggestBoxItem<String>(
                              value: bloodGroup,
                              label: bloodGroup,
                              onFocusChange: (focused) {
                                if (focused) {
                                  debugPrint('Focused $bloodGroup');
                                }
                              });
                        }).toList(),
                        onSelected: (item) {
                          setState(() => bloodGroupSelected = item.value);
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: privilageController,
                        placeholder: 'Privilage',
                        validator: (value) {
                          if (value == null || value.trim().length != 3) {
                            return 'The name must be exactly of at length 3';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: fatherNameController,
                        placeholder: 'Father Name',
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'The name must be provided';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: motherNameController,
                        placeholder: 'Mother Name',
                        validator: (value) {
                          if (value == null || value.trim().length != 1) {
                            return 'The name must be of exactly length 1';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      DatePicker(
                        selected: DateTime.now(),
                        onChanged: (value) {
                          birthday = value.toString();
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: hometownController,
                        placeholder: 'Hometown',
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'The name must be provided';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormBox(
                        controller: phoneController,
                        placeholder: 'Phone Number',
                        validator: (value) {
                          if (value == null || value.trim().length != 11) {
                            return 'The name must be of exactly length 11';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      Button(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            StudentModel studentModel = StudentModel(
                              id: idController.text,
                              name: nameController.text,
                              department: departmentSelected,
                              email: EmailModel(
                                  personal: personalEmailController.text,
                                  academic: academicEmailController.text),
                              gender: genderController.text,
                              session: sessionBoxValue,
                              currentSemester: semesterBoxValue,
                              bloodGroup: bloodGroupController.text,
                              privilage: privilageController.text,
                              personal: PersonalModel(
                                father: fatherNameController.text,
                                mother: motherNameController.text,
                                birthday: birthday,
                                phone: phoneController.text,
                                hometown: hometownController.text,
                              ),
                            );
                            try {
                              await StudentModel.create(studentModel);
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
