import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/management/course/course_details.dart';

class Course extends StatelessWidget {
  const Course({super.key});
  final String root = 'Course';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<CourseModel>(
      root: root,
      loadNames: () {
        return CourseModel.getCourseNames();
      },
      detailsPage: (String id) {
        return CourseDetails(id: id);
      },
    );
  }
}
