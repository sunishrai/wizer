
abstract class BaseLogin {
  //change string to your model
  Future<String?> login(String email, String password);
    Future<String?> getProfile();
    Future<String?> forgotPassword(String email);
}
