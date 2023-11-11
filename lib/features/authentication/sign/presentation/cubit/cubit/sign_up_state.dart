part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

class SignUpInitial extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpSuccessState extends SignUpState {
  final int userId;
  final UserModel userModel;

  const SignUpSuccessState({required this.userId, required this.userModel});
  @override
  List<Object> get props => [
        userId,
        userModel,
      ];
}

class SignUpErrorState extends SignUpState {
  final String messagesError;

  const SignUpErrorState({required this.messagesError});
  @override
  List<Object> get props => [messagesError];
}
