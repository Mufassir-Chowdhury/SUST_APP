import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:sust_app/components/authorization.dart';
import 'package:sust_app/components/profile_model.dart';
import 'package:sust_app/routes/admin_page.dart';

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
      content: Center(
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
                placeholder: "ID",
                controller: usernameController,
              ),
              const SizedBox(height: 20),
              TextFormBox(
                placeholder: "Password",
                controller: passwordController,
              ),
              const SizedBox(height: 20),
              Button(
                child: const Text('Login'),
                onPressed: () async {
                  Authorization result = await Authorization.login(
                      usernameController.text, passwordController.text);
                  if (result.success) {
                    Navigator.of(context)
                        .push(FluentPageRoute(builder: (BuildContext context) {
                      return ChangeNotifierProvider(
                        create: ((context) => ProfileModel(
                              name: "Mufassir Ahmad Chowdhury",
                              email: "mac22214u@gmail.com",
                              id: "2019331073",
                              department: "CSE",
                            )),
                        child: const AdminPage(),
                      );
                    }));
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
    );
  }
}
