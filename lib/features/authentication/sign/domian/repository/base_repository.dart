import 'package:dartz/dartz.dart';
import 'package:intern2grow/features/authentication/sign/data/models/user_models.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

abstract class BaseAuthRepo {
  Future<Either<Failuer, UserModel>> singUp({
    required String userName,
    required String emailAdress,
    required String password,
  });
  Future<Either<Failuer, UserModel>> logIn({
    required final String userName,
    required final String emailAdress,
    required final String password,
  });
}
