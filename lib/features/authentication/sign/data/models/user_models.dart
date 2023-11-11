import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int? id;
  final String? userName;
  final String? email;
  final String? password;

  const UserModel({this.id, this.userName, this.email, this.password});

  @override
  List<Object?> get props => [
        email,
        password,
        id,
        userName,
      ];

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json["username"],
        email: json["email"],
        password: json["password"],
        id: json["id"].t
      );

  Map<String, dynamic> toJson() => {
        "username": userName,
        "email": email,
        "password": password,
        "id": id,
      };
}
