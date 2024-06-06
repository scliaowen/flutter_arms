import 'package:arms_core/base/base_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arms/view_model/login_view_model.dart';

import '../repository/login_repository.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseViewState<LoginView, LoginViewModel>{

  @override
  Widget buildView() {
    return Container(
      child: Text("LoginView"),
    );
  }


  @override
  LoginViewModel createViewModel() {
    return LoginViewModel(LoginRepository());
  }

  @override
  void loadData() {

  }
}
