import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:sust_app/components/authorization.dart';
import 'package:sust_app/components/database_models/admin/admin_model.dart';
import 'package:sust_app/components/database_models/student/student_model.dart';
import 'package:sust_app/components/database_models/teacher/teacher_model.dart';
import 'package:sust_app/components/profile_model.dart';
import 'package:sust_app/routes/admin_page.dart';
import 'package:sust_app/routes/student_page.dart';
import 'package:sust_app/routes/teacher_page.dart';
import 'package:flutter/material.dart' as material;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool errorFound = false;
  String errorMessage = '';
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: Container(
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormBox(
                  placeholder: "E-mail",
                  controller: usernameController,
                ),
                const SizedBox(height: 20),
                TextFormBox(
                  placeholder: "Password",
                  controller: passwordController,
                ),
                const SizedBox(height: 20),
                FilledButton(
                  child: const Text('Login'),
                  onPressed: () async {
                    Authorization result = await Authorization.login(
                        usernameController.text, passwordController.text);
                    if (result.success) {
                      if (result.scope == 'teacher') {
                        TeacherModel teacher =
                            await TeacherModel.getDetails(result.id!);

                        Navigator.of(context).push(
                            FluentPageRoute(builder: (BuildContext context) {
                          return ChangeNotifierProvider(
                            create: ((context) => ProfileModel(
                                  name: teacher.name,
                                  email: teacher.email!.academic,
                                  id: teacher.id,
                                  department: teacher.department,
                                  type: 'teacher',
                                )),
                            child: const TeacherPage(),
                          );
                        }));
                      } else if (result.scope == 'student') {
                        StudentModel student =
                            await StudentModel.getDetails(result.id!);

                        Navigator.of(context).push(
                            FluentPageRoute(builder: (BuildContext context) {
                          return ChangeNotifierProvider(
                            create: ((context) => ProfileModel(
                                  name: student.name,
                                  email: student.email!.academic,
                                  id: student.id,
                                  department: student.department,
                                  type: 'stduent',
                                )),
                            child: const StudentPage(),
                          );
                        }));
                      } else {
                        AdminModel admin =
                            await AdminModel.getDetails(result.id!);

                        Navigator.of(context).push(
                            FluentPageRoute(builder: (BuildContext context) {
                          return ChangeNotifierProvider(
                            create: ((context) => ProfileModel(
                                  name: admin.name,
                                  email: admin.email!.academic,
                                  id: admin.id,
                                  department: admin.department,
                                  type: 'admin',
                                )),
                            child: const AdminPage(),
                          );
                        }));
                      }
                    } else {
                      setState(() {
                        errorFound = true;
                        errorMessage = "Invalid credentials";
                      });
                    }
                  },
                ),
                errorFound
                    ? Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
