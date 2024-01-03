import 'dart:io';

class DrawerModel {
  String id;
  String name;
  String email;
  File profileImage;

  DrawerModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.profileImage});

  factory DrawerModel.fromJson(Map<String, dynamic> json) {
    return DrawerModel(
        id: json[""], name: json[""], email: json[""], profileImage: json[""]);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      // 'profileImage': profileImage,
    };
  }
}
