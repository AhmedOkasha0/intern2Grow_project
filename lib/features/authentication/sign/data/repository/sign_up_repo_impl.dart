import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/error/exceptions.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/sign/data/data_source/singn_up_data_source.dart';
import 'package:intern2grow/features/authentication/sign/data/models/user_models.dart';
import 'package:intern2grow/features/authentication/sign/domian/repository/base_repository.dart';

class SignUpRepositoryImol implements BaseAuthRepo {
  final BaseSignUpDataSource baseSignUpDataSource;

  SignUpRepositoryImol({required this.baseSignUpDataSource});

  @override
  Future<Either<Failuer, UserModel>> singUp(
      {required String userName,
      required String emailAdress,
      required String password}) async {
    final response = await baseSignUpDataSource.userSignUp(
      name: userName,
      password: password,
      emailAdress: emailAdress,
    );
    final UserModel user = UserModel.fromJson(response);
    try {
      return right(user);
    } on ServerExeption catch (faliuer) {
      return left(SereverFailuer(faliuer.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failuer, UserModel>> logIn(
      {required String userName,
      required String emailAdress,
      required String password}) {
    // TODO: implement logIn
    throw UnimplementedError();
  }
}
