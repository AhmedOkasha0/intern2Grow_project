import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intern2grow/core/faliuer/faliuer.dart';

abstract class BaseUseCase<T, Parameter> {
  Future<Either<Failuer, T>> call(Parameter parameter);
}

class NoParameter extends Equatable {
  const NoParameter();
  @override
  List<Object?> get props => [];
}