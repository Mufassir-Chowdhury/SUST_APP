import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}

class CourseRegistration extends StatefulWidget {
  const CourseRegistration({super.key});

  @override
  State<CourseRegistration> createState() => _CourseRegistrationState();
}

class _CourseRegistrationState extends State<CourseRegistration> {
  MultiSelectController<dynamic> _controller = MultiSelectController();
  final _animals = [
    Animal(id: 1, name: "Cat"),
    Animal(id: 2, name: "Dog"),
    Animal(id: 3, name: "Mouse"),
    Animal(id: 4, name: "Parrot"),
    Animal(id: 5, name: "Rabbit"),
    Animal(id: 6, name: "Tiger"),
  ];
  String? yearSelected;
  final years = <String>[
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
  ];
  var _selectedAnimals = <Animal>[];
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(title: Text("Course Registration")),
      content: material.Material(
        child: ListView(
          children: [
            Row(
              children: [
                const SizedBox(width: 30),
                const Text("Year: "),
                material.DropdownButton<String>(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  isExpanded: false,
                  value: yearSelected,
                  onChanged: (String? value) {
                    setState(() {
                      yearSelected = value!;
                    });
                  },
                  items: years
                      .map<material.DropdownMenuItem<String>>((String value) {
                    return material.DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(width: 60),
                const Text("Semester: "),
                material.DropdownButton<String>(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  value: yearSelected,
                  onChanged: (String? value) {
                    setState(() {
                      yearSelected = value!;
                    });
                  },
                  items: years
                      .map<material.DropdownMenuItem<String>>((String value) {
                    return material.DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: MultiSelectCheckList(
                      listViewSettings: ListViewSettings(
                          separatorBuilder: (context, index) =>
                              const material.Divider(
                                height: 0,
                              )),
                      controller: _controller,
                      items: List.generate(
                          _animals.length,
                          (index) => CheckListCard(
                                value: _animals[index].id,
                                title: Text(_animals[index].name),
                                subtitle: Text(_animals[index].id.toString()),
                              )),
                      onChange: (allSelectedItems, selectedItem) {
                        setState(() {
                          var _temp = <Animal>[];
                          for (int i = 0; i < allSelectedItems.length; i++) {
                            _temp.add(_animals[allSelectedItems[i] - 1]);
                          }
                          _selectedAnimals = _temp;
                        });
                      },
                    ),
                  ),
                  Button(
                      child: material.Icon(material.Icons.arrow_right_alt),
                      onPressed: () {}),
                  Flexible(
                    child: ListView(
                      shrinkWrap: true,
                      children: _selectedAnimals
                          .map((animal) => ListTile(
                                title: Text(animal.name),
                                subtitle: Text(animal.id.toString()),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
