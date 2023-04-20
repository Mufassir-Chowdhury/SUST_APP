import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/details_page.dart';
import 'package:sust_app/components/simple_list_page.dart';

class Course extends StatelessWidget {
  const Course({super.key});
  final String root = 'Course';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return CourseModel.getListTile();
      },
      detailsPage: (String id, String name) {
        return DetailsPage(
          id: id,
          name: name,
          loadDetails: (String id) {
            return CourseModel.getDetails(id);
          },
          showTable: (CourseModel? data) {
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
