import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/window_actions.dart';
import 'package:sust_app/routes/Administration/course_registration.dart';
import 'package:sust_app/routes/Updates/posts.dart';
import 'package:sust_app/routes/Updates/routine.dart';
import 'package:window_manager/window_manager.dart';
import 'package:sust_app/routes/management/department/department.dart';

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
              );
            }).toList(),
            onSelected: (item) {
              setState(() => selected = item.value);
            },
          ),
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.mail),
              title: const Text('Class Routine'),
              body: const Routine(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.calendar),
              title: const Text('Posts'),
              body: const Posts(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.calendar),
              title: const Text('Course Registration'),
              body: const CourseRegistration(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.home_group),
              title: const Text('Department'),
              body: const Department(),
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
