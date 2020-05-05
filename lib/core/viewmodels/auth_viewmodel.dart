import 'package:inunpad/core/locators.dart';
import 'package:inunpad/core/result.dart';
import 'package:inunpad/core/services/api.dart';
import 'package:inunpad/core/viewmodels/base_viewmodel.dart';

class AuthViewModel extends BaseModel {
  Api _api = locator<Api>();
  String name;
  String password;
  String confirmPassword;
  String email;
  String errorMessage;

  void init() async {
    setBusy(true);
    errorMessage = '';
    setBusy(false);
  }

  Future register() async {
    Result result;
    errorMessage = '';
    setBusy(true);
    if (name == null || password == null || email == null)
      result = Result(ResultType.Warning, 'Data harus diisi');
    else
      result = await _api.register(name, password, email, confirmPassword);
    setBusy(false);
    return result;
  }

  Future login() async {
    Result result;
    errorMessage = '';
    setBusy(true);
    if (name == null || password == null)
      result = Result(ResultType.Warning, 'Username dan password harus diisi');
    else
      result = await _api.login(name, password);
    setBusy(false);
    return result;
  }
}
