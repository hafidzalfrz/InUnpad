import 'package:inunpad/core/result.dart';

class Api {
  Future register(String username, String password, String name,
      String confirmPassword) async {
    return Result(ResultType.Error, 'Username atau password salah');
  }

  Future login(String username, String password) async {
    return Result(ResultType.Error, 'Username atau password salah');
  }
}
