import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userName;
  final String password;
  final String emailAdress;

  const User({
    required this.userName,
    required this.password,
    required this.emailAdress,
  });

  @override
  List<Object?> get props => [
        userName,
        password,
        emailAdress,
      ];
}
