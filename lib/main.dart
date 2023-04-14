import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/window_actions.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  SystemTheme.accentColor.load();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(1200, 600),
    center: true,
    backgroundColor: Colors.transparent,
    titleBarStyle: TitleBarStyle.hidden,
    skipTaskbar: false,
    fullScreen: false,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: FluentThemeData(
        focusTheme: const FocusThemeData(glowFactor: 4.0),
      ),
      title: 'Personal Dashboard',
      home: const MyHomePage(
        title: "Report App",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  String? selected;
  List<String> cats = <String>[
    'Abyssinian',
    'Aegean',
    'American Bobtail',
    'American Curl'
  ];
  @override
  Widget build(BuildContext context) {
    return DragToMoveArea(
      child: NavigationView(
        appBar: const NavigationAppBar(
          title: Text('Report App'),
          automaticallyImplyLeading: true,
          actions: WindowActions(),
        ),
        pane: NavigationPane(
          selected: _currentIndex,
          onChanged: (i) => setState(() {
            _currentIndex = i;
          }),
          displayMode: PaneDisplayMode.open,
          autoSuggestBox: AutoSuggestBox<String>(
            items: cats.map((cat) {
              return AutoSuggestBoxItem<String>(
                  value: cat,
                  label: cat,
                  onFocusChange: (focused) {
                    if (focused) {
                      debugPrint('Focused $cat');
                    }
                  });
            }).toList(),
            onSelected: (item) {
              setState(() => selected = item.value);
            },
          ),
          items: [
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Updates'),
              body: BodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Class Routine'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Due Assignments'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Upcoming Exams'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Notices'),
                  body: BodyItem(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Course Information'),
              body: BodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Resources'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Result'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Attendance'),
                  body: BodyItem(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Administrivia'),
              body: BodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Payment'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Course Registration'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Important Links'),
                  body: BodyItem(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Miscellaneous'),
              body: BodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Bus Schedule'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.view_dashboard),
                  title: const Text('Student Information'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Events'),
                  body: BodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Map'),
                  body: BodyItem(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget BodyItem() {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Body'),
      ),
    );
  }
}
