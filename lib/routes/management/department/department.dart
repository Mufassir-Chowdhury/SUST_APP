import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/department/department_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/components/details_page.dart';

class Department extends StatelessWidget {
  const Department({super.key});
  final String root = 'Department';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return DepartmentModel.getListTile();
      },
      detailsPage: (String id, String name) {
        return DetailsPage(
          id: id,
          name: name,
          loadDetails: (String id) {
            return DepartmentModel.getDetails(id);
          },
          showTable: (DepartmentModel? data) {
            return data!.toJson().entries.map((element) {
              return material.DataRow(
                cells: [
                  material.DataCell(Text(element.key.toUpperCase())),
                  material.DataCell(Text(element.value.toString())),
                ],
              );
            }).toList();
          },
        );
      },
    );
  }
}
