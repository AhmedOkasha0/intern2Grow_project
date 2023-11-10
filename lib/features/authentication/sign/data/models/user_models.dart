import 'package:intern2grow/features/authentication/sign/domian/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.userName,
    required super.password,
    required super.emailAdress,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      userName: json["username"],
      emailAdress: json["email"],
      password: json["password"]);

  Map<String, dynamic> toJson() => {
        "username": userName,
        "email": emailAdress,
        "password": password,
      };
}
