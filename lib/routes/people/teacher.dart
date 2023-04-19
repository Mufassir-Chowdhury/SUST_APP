import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/teacher/teacher_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/people/teacher_details.dart';

class Teacher extends StatelessWidget {
  const Teacher({super.key});
  final String root = 'Teacher';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return TeacherModel.getTeacherListTile();
      },
      detailsPage: (String id) {
        return TeacherDetails(id: id);
      },
    );
  }
}
