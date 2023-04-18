import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/admin/admin_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/people/student_details.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});
  final String root = 'Admin';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<AdminModel>(
      root: root,
      loadNames: () {
        return AdminModel.getAdminNames();
      },
      detailsPage: (String id) {
        return StudentDetails(id: id);
      },
    );
  }
}
