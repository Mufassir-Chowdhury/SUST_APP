import 'package:fluent_ui/fluent_ui.dart';

class ProfileModel extends ChangeNotifier {
  ProfileModel({
    this.name,
    this.email,
    this.id,
    this.department,
    this.type,
  });

  String? name;
  String? email;
  String? id;
  String? department;
  String? type;

  void updateProfile({
    String? name,
    String? email,
    String? id,
    String? department,
    String? type,
  }) {
    this.name = name ?? this.name;
    this.email = email ?? this.email;
    this.id = id ?? this.id;
    this.department = department ?? this.department;
    this.type = type ?? this.type;
    notifyListeners();
  }
}
