import 'package:flutter/material.dart';
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
  var _selectedAnimals = <Animal>[];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: MultiSelectCheckList(
                  listViewSettings: ListViewSettings(
                      separatorBuilder: (context, index) => const Divider(
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
        ],
      ),
    );
  }
}
