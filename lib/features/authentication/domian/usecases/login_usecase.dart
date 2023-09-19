import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/features/authentication/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/domian/repository/base_repository.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

class LoginUsecase extends BaseUseCase<User, LoginParameter> {
  BaseQouteRepository baseQouteRepository;
  LoginUsecase({
    required this.baseQouteRepository,
  });
  @override
  Future<Either<Failuer, User>> call(LoginParameter parameter) async {
    return await baseQouteRepository.login(parameter);
  }
}

class LoginParameter extends Equatable {
  final String userName;
  final String password;

  const LoginParameter({required this.userName, required this.password});
  @override
  List<Object?> get props => [
        userName,
        password,
      ];
}
