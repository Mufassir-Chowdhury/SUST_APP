import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';

class DepartmentDetails extends StatelessWidget {
  const DepartmentDetails({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: FutureBuilder<DepartmentModel?>(
        future: DepartmentModel.getDepartmentDetails(name),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return material.DataTable(
              columns: [
                const material.DataColumn(label: Text('Name')),
                material.DataColumn(label: Text(snapshot.data!.name ?? 'N/A')),
              ],
              rows: [
                material.DataRow(
                  cells: [
                    const material.DataCell(Text('Code')),
                    material.DataCell(Text(snapshot.data!.code.toString())),
                  ],
                ),
                material.DataRow(
                  cells: [
                    const material.DataCell(Text('Floor')),
                    material.DataCell(Text(snapshot.data!.floor.toString())),
                  ],
                ),
                material.DataRow(
                  cells: [
                    const material.DataCell(Text('Building')),
                    material.DataCell(Text(snapshot.data!.building ?? 'N/A')),
                  ],
                ),
                material.DataRow(
                  cells: [
                    const material.DataCell(Text('Letter Code')),
                    material.DataCell(Text(snapshot.data!.letterCode ?? 'N/A')),
                  ],
                ),
                material.DataRow(
                  cells: [
                    const material.DataCell(Text('Minor Course Code')),
                    material.DataCell(
                        Text(snapshot.data!.minorCourseCode ?? 'N/A')),
                  ],
                ),
              ],
            );
          } else {
            return const Center(
              child: ProgressBar(),
            );
          }
        },
      ),
    )
        .animate()
        .fade()
        .slideY(begin: .25, end: 0, duration: 400.ms, curve: Curves.easeOut);
  }
}
