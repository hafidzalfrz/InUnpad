import 'package:inunpad/core/locators.dart';
import 'package:inunpad/core/result.dart';
import 'package:inunpad/core/services/api.dart';
import 'package:inunpad/core/viewmodels/base_viewmodel.dart';

class AuthViewModel extends BaseModel {
  Api _api = locator<Api>();
  String username;
  String password;
  String confirmPassword;
  String name;
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
    if (username == null || password == null || name == null)
      result = Result(ResultType.Warning, 'Data harus diisi');
    else
      result = await _api.register(username, password, name, confirmPassword);
    setBusy(false);
    return result;
  }

  Future login() async {
    Result result;
    errorMessage = '';
    setBusy(true);
    if (username == null || password == null)
      result = Result(ResultType.Warning, 'Username dan password harus diisi');
    else
      result = await _api.login(username, password);
    setBusy(false);
    return result;
  }
}
