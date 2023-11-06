import 'package:dartz/dartz.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/sign_up/data/models/user_models.dart';

abstract class BaseSignInRepo {
  Future<Either<Failuer, UserModel>> logIn({
    required final String userName,
    required final String emailAdress,
    required final String password,
  });
}
