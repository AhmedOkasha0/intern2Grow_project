import 'package:intern2grow/core/api/api_consumer.dart';

abstract class BaseSignUpDataSource {
  Future<Map<String, dynamic>> userSignUp({
    required String name,
    required String password,
    required String emailAdress,
  });
}

class SignUpDataSourceImpl implements BaseSignUpDataSource {
  ApiConsumer apiConsumer;
  SignUpDataSourceImpl({
    required this.apiConsumer,
  });
  @override
  Future<Map<String, dynamic>> userSignUp({
    required String name,
    required String password,
    required String emailAdress,
  }) async {
    final respose = await apiConsumer.post("https://dummyjson.com/auth/login",
        body: {"username": name, "email": emailAdress, "password": password});
    return respose;
  }
}
