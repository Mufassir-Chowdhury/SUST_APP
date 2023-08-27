import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/database_models/teacher/teacher_model.dart';

class EditTeacher extends StatefulWidget {
  const EditTeacher({super.key, required this.id});
  final String id;

  @override
  State<EditTeacher> createState() => _EditTeacherState();
}

class _EditTeacherState extends State<EditTeacher> {
  Future<List<ListModel>> loadDepartments() async {
    return DepartmentModel.getListTile();
  }

  Future<TeacherModel> loadDetails(String id) async {
    return TeacherModel.getDetails(id);
  }

  @override
  void initState() {
    super.initState();
    departments = loadDepartments();
    teacher = loadDetails(widget.id);
  }

  bool errorFound = false;
  String errorMessage = '';
  final _formKey = GlobalKey<FormState>();

  String? departmentSelected;
  String? bloodGroupSelected;
  String? genderSelected;
  String? designationSelected;

  late Future<List<ListModel>> departments;
  late Future<TeacherModel> teacher;

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
        FutureBuilder<TeacherModel>(
            future: teacher,
            builder: (context, teacherSnapshot) {
              if (teacherSnapshot.hasData) {
                return FutureBuilder<List<ListModel>>(
                    future: departments,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        idBoxValue =
                            int.parse(teacherSnapshot.data!.id!.split(':')[1]);
                        nameController.text = teacherSnapshot.data!.name!;
                        designationController.text =
                            teacherSnapshot.data!.designation!;
                        personalEmailController.text =
                            teacherSnapshot.data!.email!.personal!;
                        academicEmailController.text =
                            teacherSnapshot.data!.email!.academic!;
                        genderController.text = teacherSnapshot.data!.gender!;
                        bloodGroupController.text =
                            teacherSnapshot.data!.bloodGroup!;
                        fatherNameController.text =
                            teacherSnapshot.data!.personal!.father!;
                        motherNameController.text =
                            teacherSnapshot.data!.personal!.mother!;
                        hometownController.text =
                            teacherSnapshot.data!.personal!.hometown!;
                        phoneBoxValue =
                            int.parse(teacherSnapshot.data!.personal!.phone!);
                        birthday = teacherSnapshot.data!.personal!.birthday!;
                        departmentSelected = teacherSnapshot.data!.department!;

                        return Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Edit teacher'),
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
                                  if (value == null ||
                                      value.trim().length < 5) {
                                    return 'The name must be of at least length 5';
                                  }
                                  return null;
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
                                  );
                                }).toList(),
                                onSelected: (item) {
                                  setState(
                                      () => designationSelected = item.value);
                                },
                              ),
                              const SizedBox(height: 20),
                              TextFormBox(
                                controller: personalEmailController,
                                placeholder: 'Personal Email',
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().length < 5) {
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
                                  if (value == null ||
                                      value.trim().length < 5) {
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
                                  );
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
                                  );
                                }).toList(),
                                onSelected: (item) {
                                  setState(
                                      () => bloodGroupSelected = item.value);
                                  print(item.value);
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
                                endDate: DateTime.now()
                                    .subtract(const Duration(days: 15 * 365)),
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
                                    TeacherModel teacherModel = TeacherModel(
                                      id: idBoxValue.toString(),
                                      name: nameController.text,
                                      email: EmailModel(
                                          personal:
                                              personalEmailController.text,
                                          academic:
                                              academicEmailController.text),
                                      gender:
                                          genderController.text.toLowerCase(),
                                      department: departmentSelected,
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
                                      await TeacherModel.update(teacherModel);
                                      setState(() {});
                                      // widget.onPressed!();
                                    } catch (e) {
                                      setState(() {
                                        errorFound = true;
                                        errorMessage = e.toString();
                                      });
                                    }
                                  }
                                },
                                child: const Text('Update'),
                              ),
                            ],
                          ),
                        );
                      }
                      return const Center(
                        child: ProgressBar(),
                      );
                    });
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
