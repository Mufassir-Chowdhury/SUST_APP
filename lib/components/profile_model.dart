import 'package:fluent_ui/fluent_ui.dart';

class ProfileModel extends ChangeNotifier {
  ProfileModel({
    this.name,
    this.email,
    this.id,
    this.department,
  });

  String? name;
  String? email;
  String? id;
  String? department;

  void updateProfile({
    String? name,
    String? email,
    String? id,
    String? department,
  }) {
    this.name = name ?? this.name;
    this.email = email ?? this.email;
    this.id = id ?? this.id;
    this.department = department ?? this.department;
    notifyListeners();
  }
}
