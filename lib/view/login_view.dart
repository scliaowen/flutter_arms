import 'package:arms_core/base/base_view_state.dart';
import 'package:arms_core/utils/arms_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arms/view_model/login_view_model.dart';

import '../repository/login_repository.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseViewState<LoginView, LoginViewModel> {
  @override
  Widget buildView() {
    return FutureBuilder<bool>(
        future: viewModel.repository.login(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              ArmsUI.hideLoading();
            });
            return Text("Login Success");
          } else {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              ArmsUI.showLoading(
                message: "加载中");
            });

            return Container();
          }
        });
  }

  @override
  LoginViewModel createViewModel() {
    return LoginViewModel(LoginRepository());
  }

  @override
  void loadData() {}
}
