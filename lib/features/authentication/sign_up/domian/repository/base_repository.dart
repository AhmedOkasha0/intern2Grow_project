import 'package:dartz/dartz.dart';
import 'package:intern2grow/features/authentication/sign_up/data/models/user_models.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

abstract class BaseQouteRepository {
  Future<Either<Failuer, UserModel>> singUp({
    required String userName,
    required String emailAdress,
    required String password,
  });
}
