import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/student/student_model.dart';
import 'package:sust_app/components/details_page.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/people/student/add_student.dart';

class Student extends StatelessWidget {
  const Student({super.key});
  final String root = 'Student';
  @override
  Widget build(BuildContext context) {
    return SimpleListPage<ListModel>(
      add: (load) {
        return AddStudent(
          onPressed: load,
        );
      },
      root: root,
      loadNames: () {
        return StudentModel.getListTile();
      },
      detailsPage: (String id, String name) {
        print("ID: $id, name: $name");
        return DetailsPage(
          id: id,
          name: name,
          loadDetails: (String id) {
            print(id);
            return StudentModel.getDetails(id);
          },
          showTable: (StudentModel? data) {
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
