import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/features/authentication/sign_in/domain/repository/base_login_repo.dart';
import 'package:intern2grow/features/authentication/sign_up/data/models/user_models.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/entities/user.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

class LoginUsecase extends BaseUseCase<UserModel, User> {
  BaseSignInRepo signInRepo;
  LoginUsecase({
    required this.signInRepo,
  });
  @override
  Future<Either<Failuer, UserModel>> call(User parameter) async {
    return await signInRepo.logIn(
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
