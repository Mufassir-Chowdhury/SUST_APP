import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_model.dart';

class AddDepartment extends StatefulWidget {
  const AddDepartment({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  int numberBoxValue = 100;
  int floorBoxValue = 1;
  TextEditingController nameController = TextEditingController();
  TextEditingController letterCodeController = TextEditingController();
  TextEditingController buildingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text('Add a new department'),
              const SizedBox(height: 20),
              TextFormBox(
                controller: nameController,
                placeholder: 'Name',
                validator: (value) {
                  if (value == null || value.trim().length < 5) {
                    return 'The name must be of at least length 5';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text('Code'),
              NumberBox(
                placeholder: 'Code',
                value: numberBoxValue,
                min: 100,
                max: 999,
                onChanged: (int? n) {
                  n != null
                      ? setState(() {
                          numberBoxValue = n;
                        })
                      : null;
                },
                mode: SpinButtonPlacementMode.inline,
              ),
              const SizedBox(height: 20),
              const Text('Floor'),
              NumberBox(
                placeholder: 'Floor',
                value: floorBoxValue,
                min: 1,
                max: 10,
                onChanged: (int? n) {
                  n != null
                      ? setState(() {
                          floorBoxValue = n;
                        })
                      : null;
                },
                mode: SpinButtonPlacementMode.inline,
              ),
              const SizedBox(height: 20),
              TextFormBox(
                controller: letterCodeController,
                placeholder: 'Letter Code',
                validator: (value) {
                  if (value == null || value.trim().length != 3) {
                    return 'The name must be exactly of at length 3';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormBox(
                controller: buildingController,
                placeholder: 'Building',
                validator: (value) {
                  if (value == null || value.trim().length < 5) {
                    return 'The name must be of at least length 5';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Button(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // TODO check for error message after posting
                    DepartmentModel departmentModel = DepartmentModel(
                        code: numberBoxValue,
                        name: nameController.text,
                        floor: floorBoxValue,
                        letterCode: letterCodeController.text.toUpperCase(),
                        building: buildingController.text);
                    await DepartmentModel.createDepartment(departmentModel);
                    widget.onPressed!();
                  }
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
