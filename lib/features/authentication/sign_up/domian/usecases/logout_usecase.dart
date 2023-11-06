import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:intern2grow/core/base_usecase/base_usecase.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/sign_up/domian/repository/base_repository.dart';

class LogoutUseCase extends BaseUseCase<User, NoParameter> {
  BaseQouteRepository baseQouteRepository;
  LogoutUseCase({
    required this.baseQouteRepository,
  });
  @override
  Future<Either<Failuer, User>> call(NoParameter parameter) async {
    return await baseQouteRepository.logout(parameter);
  }
}

class Noparameter extends Equatable {
  @override
  List<Object?> get props => [];
}
