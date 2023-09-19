import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userName;
  final String passwprd;
  final String emailAdress;

  const User({
    required this.userName,
    required this.passwprd,
    required this.emailAdress,
  });

  @override
  List<Object?> get props => [
        userName,
        passwprd,
        emailAdress,
      ];
}
