import 'package:dartz/dartz.dart';
import 'package:intern2grow/features/authentication/domian/entities/user.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

abstract class BaseQouteRepository {
  Future<Either<Failuer, User>> login();
}
