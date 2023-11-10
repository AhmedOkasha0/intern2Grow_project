import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/features/authentication/sign/domian/entities/user.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/sign/domian/repository/base_repository.dart';

class LoginUsecase extends BaseUseCase<User, User> {
  BaseAuthRepo baseAuthRepo;

  LoginUsecase({
    required this.baseAuthRepo,
  });
  @override
  Future<Either<Failuer, User>> call(User parameter) async {
    return await baseAuthRepo.logIn(
      password: parameter.password,
      userName: parameter.userName,
      emailAdress: parameter.emailAdress,
    );
  }
}
