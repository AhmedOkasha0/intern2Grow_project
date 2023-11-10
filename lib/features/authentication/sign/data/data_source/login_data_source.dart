abstract class BaseLoginDataSource {
  Future<Map<String, dynamic>> userLogin({
    required String emailAdress,
    required String password,
  });
}
