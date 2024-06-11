import 'package:arms_core/base/base_view_model.dart';

import '../model/login_model.dart';
import '../repository/login_repository.dart';

class LoginViewModel extends BaseViewModel<LoginRepository> {
  LoginViewModel(super.repository);

  var bean = LoginModel();

  void test() {
    bean.test++;
    notifyListeners();
  }


}