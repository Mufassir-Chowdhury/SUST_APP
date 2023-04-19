import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_models/admin/admin_model.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/people/admin_details.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});
  final String root = 'Admin';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return AdminModel.getAdminListTile();
      },
      detailsPage: (String id) {
        return AdminDetails(id: id);
      },
    );
  }
}
