import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_models/admin/admin_model.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/details_page.dart';
import 'package:sust_app/components/simple_list_page.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});
  final String root = 'Admin';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return AdminModel.getListTile();
      },
      detailsPage: (String id, String name) {
        return DetailsPage(
          id: id,
          name: name,
          loadDetails: (String id) {
            return AdminModel.getDetails(id);
          },
          showTable: (AdminModel? data) {
            return data!.toJson().entries.map(
              (element) {
                return material.DataRow(
                  cells: [
                    material.DataCell(Text(element.key.toUpperCase())),
                    material.DataCell(Text(element.value.toString())),
                  ],
                );
              },
            ).toList();
          },
        );
      },
    );
  }
}
