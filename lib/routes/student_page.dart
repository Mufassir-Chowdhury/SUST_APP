import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/window_actions.dart';
import 'package:window_manager/window_manager.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
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
          title: Text('Student App'),
          automaticallyImplyLeading: false,
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
              body: bodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Class Routine'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Due Assignments'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Upcoming Exams'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Notices'),
                  body: bodyItem(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Course Information'),
              body: bodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Resources'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Result'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Attendance'),
                  body: bodyItem(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Administrivia'),
              body: bodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Payment'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Course Registration'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Important Links'),
                  body: bodyItem(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('Miscellaneous'),
              body: bodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.mail),
                  title: const Text('Bus Schedule'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.view_dashboard),
                  title: const Text('Student Information'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Events'),
                  body: bodyItem(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Map'),
                  body: bodyItem(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bodyItem() {
    return const Center(
      child: Text('Body'),
    );
  }
}
