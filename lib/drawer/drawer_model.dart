import 'dart:io';

class DrawerModel {
  String id;
  String name = "Jan";
  String lastname = "Freirich";
  String email = "JanFreirich@gmail.com";
  File profileImage = File('assets/images/237-536x354.jpg');

  DrawerModel(
      {required this.id,
      required this.name,
      required this.lastname,
      required this.email,
      required this.profileImage});

  factory DrawerModel.fromJson(Map<String, dynamic> json) {
    return DrawerModel(
        id: json["id"],
        name: json["name"],
        lastname: json['lastname'],
        email: json["email"],
        profileImage: json[""]);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lastname': lastname,
      'email': email,
      // 'profileImage': profileImage,
    };
  }
}
