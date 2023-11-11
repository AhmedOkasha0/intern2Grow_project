import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:intern2grow/features/authentication/sign/data/models/user_models.dart';
import 'package:intern2grow/features/authentication/sign/domian/entities/user.dart';
import 'package:intern2grow/features/authentication/sign/domian/usecases/register_usecase.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpCubit(
    this.signUpUseCase,
  ) : super(SignUpInitial());

  Future<void> userSignUp({
    required String userName,
    required String password,
    required String emailAdress,
  }) async {
    emit(SignUpLoadingState());

    signUpUseCase(User(
            userName: userName, password: password, emailAdress: emailAdress))
        .then((value) {
      value.fold(
          (failuer) => emit(SignUpErrorState(messagesError: failuer.message)),
          (user) =>
              emit(SignUpSuccessState(userId: user.id!, userModel: user)));
    });
  }
}
