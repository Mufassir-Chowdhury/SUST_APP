import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DetailsPage<T> extends StatelessWidget {
  const DetailsPage(
      {super.key,
      required this.id,
      required this.showTable,
      required this.loadDetails,
      required this.name});
  final String id;
  final String name;
  final List<DataRow> Function(T? model) showTable;
  final Function(String id) loadDetails;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: FutureBuilder<T?>(
        future: loadDetails(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: DataTable(
                columns: [
                  const DataColumn(label: Text('Name')),
                  DataColumn(label: Text(name)),
                ],
                rows: [
                  ...showTable(snapshot.data),
                ],
              ),
            );
          } else {
            return const Center(
              child: ProgressBar(),
            );
          }
        },
      ),
    ).animate().fade();
  }
}
