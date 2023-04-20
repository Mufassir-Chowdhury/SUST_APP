import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/course/course_model.dart';
import 'package:sust_app/components/database_models/offered_course/offered_course_model.dart';
import 'package:sust_app/components/details_page.dart';
import 'package:sust_app/components/simple_list_page.dart';

class OfferedCourse extends StatelessWidget {
  const OfferedCourse({super.key});
  final String root = 'Offered Courses';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      root: root,
      loadNames: () {
        return OfferedCourseModel.getListTile();
      },
      detailsPage: (String id, String name) {
        return DetailsPage(
          id: id,
          name: name,
          loadDetails: (String id) {
            return OfferedCourseModel.getDetails(id);
          },
          showTable: (OfferedCourseModel? data) {
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
