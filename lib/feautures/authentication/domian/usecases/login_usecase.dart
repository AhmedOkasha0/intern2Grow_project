import 'package:dartz/dartz.dart';
import 'package:intern2grow/feautures/authentication/domian/entities/user.dart';
import 'package:intern2grow/feautures/authentication/domian/repository/base_repository.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

class LoginUsecase {
  BaseQouteRepository baseQouteRepository;
  LoginUsecase({
    required this.baseQouteRepository,
  });

  Future<Either<Failuer, User>> call() {
    return baseQouteRepository.login();
  }
}
