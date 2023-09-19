import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/domian/repository/base_repository.dart';

class RegisterUsecase extends BaseUseCase<User, RegisterParameter> {
  BaseQouteRepository baseQouteRepository;
  RegisterUsecase({
    required this.baseQouteRepository,
  });
  @override
  Future<Either<Failuer, User>> call(RegisterParameter parameter) async {
    return await baseQouteRepository.register(parameter);
  }
}

class RegisterParameter extends Equatable {
  final String userName;
  final String emailAdress;
  final String password;

  const RegisterParameter(
      {required this.userName,
      required this.emailAdress,
      required this.password});

  @override
  List<Object?> get props => [
        userName,
        password,
        emailAdress,
      ];
}
