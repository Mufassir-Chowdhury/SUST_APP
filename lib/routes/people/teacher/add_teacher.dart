import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/database_models/teacher/teacher_model.dart';

class AddTeacher extends StatefulWidget {
  const AddTeacher({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddTeacher> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
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
  String? designationSelected;

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
  List<String> designations = <String>[
    'Lecturer',
    'Assistant Professor',
    'Professor'
  ];
  int idBoxValue = 0;
  int phoneBoxValue = 0;

  String birthday =
      DateTime.now().subtract(const Duration(days: 15 * 365)).toString();

  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController personalEmailController = TextEditingController();
  TextEditingController academicEmailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
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
                      const Text('Add a new teacher'),
                      const SizedBox(height: 20),
                      const Text('ID'),
                      NumberBox(
                        placeholder: 'ID',
                        value: idBoxValue,
                        min: 1000000000,
                        max: 9999999999,
                        onChanged: (int? n) {
                          n != null
                              ? setState(() {
                                  idBoxValue = n;
                                })
                              : null;
                        },
                        mode: SpinButtonPlacementMode.inline,
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
                      AutoSuggestBox<String>(
                        placeholder: 'Designations',
                        controller: designationController,
                        items: designations.map((designation) {
                          return AutoSuggestBoxItem<String>(
                              value: designation,
                              label: designation,
                              onFocusChange: (focused) {
                                if (focused) {
                                  debugPrint('Focused $designation');
                                }
                              });
                        }).toList(),
                        onSelected: (item) {
                          setState(() => designationSelected = item.value);
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
                          if (value == null || value.trim().isEmpty) {
                            return 'The name must be of atleast length 1';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      DatePicker(
                        selected: DateTime.parse(birthday),
                        endYear: DateTime.now().year - 15,
                        onChanged: (value) {
                          setState(() {
                            birthday = value.toString();
                          });
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
                      const Text('Phone Number'),
                      NumberBox(
                        placeholder: 'Phone Number',
                        value: phoneBoxValue,
                        min: 1000000000,
                        max: 9999999999,
                        onChanged: (int? n) {
                          n != null
                              ? setState(() {
                                  phoneBoxValue = n;
                                })
                              : null;
                        },
                        mode: SpinButtonPlacementMode.inline,
                      ),
                      const SizedBox(height: 20),
                      Button(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            TeacherModel studentModel = TeacherModel(
                              id: idBoxValue.toString(),
                              name: nameController.text,
                              department: departmentSelected,
                              email: EmailModel(
                                  personal: personalEmailController.text,
                                  academic: academicEmailController.text),
                              gender: genderController.text.toLowerCase(),
                              designation: designationController.text,
                              bloodGroup: bloodGroupController.text,
                              personal: PersonalModel(
                                father: fatherNameController.text,
                                mother: motherNameController.text,
                                birthday: birthday,
                                phone: phoneBoxValue.toString(),
                                hometown: hometownController.text,
                              ),
                            );
                            try {
                              await TeacherModel.create(studentModel);
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
