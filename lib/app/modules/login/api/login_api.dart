import 'package:wizer/core/apis/base_api_imp.dart';

import '../../../../repository/login/login_repo.dart';

class AuthApi extends BaseApiImp implements BaseLogin {
  @override
  Future<String?> forgotPassword(String email) {
    throw UnimplementedError();
  }

  @override
  Future<String?> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<String?> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}