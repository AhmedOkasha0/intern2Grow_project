import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/sign/data/models/user_models.dart';
import 'package:intern2grow/features/authentication/sign/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/sign/domian/repository/base_repository.dart';

class RegisterUsecase extends BaseUseCase<UserModel, User> {
  BaseAuthRepo baseQouteRepository;
  RegisterUsecase({
    required this.baseQouteRepository,
  });
  @override
  Future<Either<Failuer, UserModel>> call(User parameter) async {
    return await baseQouteRepository.singUp(
      emailAdress: parameter.emailAdress,
      password: parameter.password,
      userName: parameter.userName,
    );
  }
}
