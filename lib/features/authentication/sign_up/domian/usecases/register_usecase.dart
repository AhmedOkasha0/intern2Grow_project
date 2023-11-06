import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/sign_up/data/models/user_models.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/repository/base_repository.dart';

class RegisterUsecase extends BaseUseCase<UserModel, User> {
  BaseSignUpRepo baseQouteRepository;
  RegisterUsecase({
    required this.baseQouteRepository,
  });
  @override
  Future<Either<Failuer, UserModel>> call(User parameter) async {
    return await baseQouteRepository.singUp(
      emailAdress: parameter.emailAdress,
      password: parameter.passwprd,
      userName: parameter.userName,
    );
  }
}

// class RegisterParameter extends Equatable {
//   final String userName;
//   final String emailAdress;
//   final String password;

//   const RegisterParameter(
//       {required this.userName,
//       required this.emailAdress,
//       required this.password});

//   @override
//   List<Object?> get props => [
//         userName,
//         password,
//         emailAdress,
//       ];
// }
