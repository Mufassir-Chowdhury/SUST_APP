import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/routes/login_page.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';

// TODO animations package
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  SystemTheme.accentColor.load();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(1200, 600),
    center: true,
    titleBarStyle: TitleBarStyle.hidden,
    skipTaskbar: false,
    fullScreen: false,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MyApp(
    title: 'Login',
    child: LoginPage(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: FluentThemeData(
        focusTheme: const FocusThemeData(glowFactor: 4.0),
      ),
      title: title,
      home: child,
    );
  }
}
