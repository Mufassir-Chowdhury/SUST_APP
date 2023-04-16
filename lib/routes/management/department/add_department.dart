import 'package:fluent_ui/fluent_ui.dart';
import 'package:sust_app/components/database_model.dart';

class AddDepartment extends StatefulWidget {
  const AddDepartment({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  int numberBoxValue = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController letterCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Add a new department'),
              const SizedBox(height: 20),
              TextFormBox(
                controller: nameController,
                placeholder: 'Name',
              ),
              const SizedBox(height: 20),
              NumberBox(
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
              TextFormBox(
                controller: floorController,
                placeholder: 'Floor',
              ),
              const SizedBox(height: 20),
              TextFormBox(
                controller: letterCodeController,
                placeholder: 'Letter Code',
              ),
              const SizedBox(height: 20),
              Button(
                onPressed: () async {
                  DepartmentModel departmentModel = DepartmentModel(
                    code: numberBoxValue,
                    name: nameController.text,
                    floor: floorController.text,
                    letterCode: letterCodeController.text,
                  );
                  await DepartmentModel.createDepartment(departmentModel)
                      .then((value) => print(value));
                  widget.onPressed!();
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
