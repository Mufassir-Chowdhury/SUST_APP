import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/student/student_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/people/student_details.dart';

class Student extends StatelessWidget {
  const Student({super.key});
  final String root = 'Student';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<StudentModel>(
      root: root,
      loadNames: () {
        return StudentModel.getStudentNames();
      },
      detailsPage: (String id) {
        return StudentDetails(id: id);
      },
    );
  }
}
