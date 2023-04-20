import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/window_actions.dart';
import 'package:sust_app/routes/management/course/course.dart';
import 'package:sust_app/routes/management/department/department.dart';
import 'package:sust_app/routes/management/offered_course.dart/offered_course.dart';
import 'package:sust_app/routes/people/admin.dart';
import 'package:sust_app/routes/people/student.dart';
import 'package:sust_app/routes/people/teacher.dart';
import 'package:window_manager/window_manager.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
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
          title: Text('Admin App'),
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
              title: const Text('Management'),
              body: bodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.home_group),
                  title: const Text('Department'),
                  body: const Department(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Courses'),
                  body: const Course(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.calendar),
                  title: const Text('Offered Courses'),
                  body: const OfferedCourse(),
                ),
              ],
            ),
            PaneItemExpander(
              icon: const Icon(FluentIcons.account_management),
              title: const Text('People'),
              body: bodyItem(),
              items: [
                PaneItem(
                  icon: const Icon(FluentIcons.people),
                  title: const Text('Students'),
                  body: const Student(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.people),
                  title: const Text('Teacher'),
                  body: const Teacher(),
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.people),
                  title: const Text('Admin'),
                  body: const Admin(),
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
