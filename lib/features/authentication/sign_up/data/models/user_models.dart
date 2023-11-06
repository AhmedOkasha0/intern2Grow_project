import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String userName;
  final String emailAdress;
  final String password;

  const UserModel({
    required this.id,
    required this.userName,
    required this.emailAdress,
    required this.password,
  });

  @override
  List<Object?> get props => [
        emailAdress,
        userName,
        password,
        id,
      ];

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json["id"],
      userName: json["username"],
      emailAdress: json["email"],
      password: json["password"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": userName,
        "email": emailAdress,
        "password": password,
      };
}
