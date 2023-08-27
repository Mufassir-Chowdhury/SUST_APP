import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:provider/provider.dart';
import 'package:sust_app/components/database_models/common_model.dart';
import 'package:sust_app/components/database_models/student/student_model.dart';
import 'package:sust_app/components/database_models/teacher/teacher_model.dart';
import 'package:sust_app/components/details_page.dart';
import 'package:sust_app/components/profile_model.dart';
import 'package:sust_app/components/simple_list_page.dart';
import 'package:sust_app/routes/people/student/add_student.dart';
import 'package:sust_app/routes/people/teacher/edit_teacher.dart';

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
          return StudentModel.getListTile(
              Provider.of<ProfileModel>(context, listen: false).department);
        },
        detailsPage: (String id, String name) {
          return DetailsPage(
            id: id,
            name: name,
            loadDetails: (String id) {
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
        deleteItem: (id) {
          return StudentModel.delete(id);
        },
        editPage: (String id, String name) {
          return EditTeacher(id: id);
        });
  }
}
