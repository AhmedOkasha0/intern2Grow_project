import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/repository/base_repository.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

class LoginUsecase extends BaseUseCase<User, User> {
  BaseQouteRepository baseQouteRepository;
  LoginUsecase({
    required this.baseQouteRepository,
  });
  @override
  Future<Either<Failuer, User>> call(User parameter) async {
    return await baseQouteRepository.login(
      password: parameter.passwprd,
      userName: parameter.userName,
      emailAdress: parameter.emailAdress,
    );
  }
}

// class LoginParameter extends Equatable {
//   final String userName;
//   final String password;

//   const LoginParameter({required this.userName, required this.password});
//   @override
//   List<Object?> get props => [
//         userName,
//         password,
//       ];
// }
