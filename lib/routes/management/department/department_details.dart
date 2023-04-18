import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sust_app/components/database_model.dart';

class DepartmentDetails extends StatelessWidget {
  const DepartmentDetails({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: FutureBuilder<DepartmentModel?>(
        future: DepartmentModel.getDepartmentDetails(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return material.DataTable(
              columns: [
                const material.DataColumn(label: Text('Name')),
                material.DataColumn(label: Text(snapshot.data!.name ?? 'N/A')),
              ],
              rows: [
                ...snapshot.data!.toJson().entries.map((element) {
                  return material.DataRow(
                    cells: [
                      material.DataCell(Text(element.key.toUpperCase())),
                      material.DataCell(Text(element.value.toString())),
                    ],
                  );
                }).toList(),
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
