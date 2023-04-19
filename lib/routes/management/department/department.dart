import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/management/department/department_details.dart';

class Department extends StatelessWidget {
  const Department({super.key});
  final String root = 'Department';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return DepartmentModel.getDepartmentListTile();
      },
      detailsPage: (String id) {
        return DepartmentDetails(id: id);
      },
    );
  }
}
