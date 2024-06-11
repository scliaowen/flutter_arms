import 'package:arms_core/arms_core.dart';
import 'package:arms_core/base/base_view_state.dart';
import 'package:arms_core/widget/observe/observable_object.dart';
import 'package:arms_core/widget/observe/observer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arms/model/login_model.dart';
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
    debugPrint("buildView");
    return Column(
      children: [
        TextButton(
            onPressed: () {
              viewModel.test();
            },
            child: Text("set title")),



        Consumer<LoginViewModel>(builder: (context, model, child) {
          debugPrint("Consumer");
          return Text("");
        }),
        Selector<LoginViewModel, LoginModel>(
          selector: (context, model) => model.bean,
          builder: (context, obj, child) {
            debugPrint("Selector");
            return Text("");
          },
        ),
        ObserverWidget<LoginViewModel, LoginModel>(
          viewModel: viewModel,
          observeData: (context,data) => viewModel.bean,
          builder: (context, value, child) {
            debugPrint("ObserverWidget Selector");
            return Text("");
          },
        ),
        ObserverWidget<LoginViewModel, int>(
          viewModel: viewModel,
          observeData: (context,data) => viewModel.bean.test,
          builder: (context, value, child) {
            debugPrint("ObserverWidget Selector int");
            return Text("");
          },
        ),
        ObserverWidget<LoginViewModel, ObservableObject<LoginModel>>(
          viewModel: viewModel,
          observeData: (context, model) => ObservableObject(value: model.bean),
          builder: (context, value, child) {
            debugPrint("ObserverWidget ObserverObject Selector");

            return Text("");
          },
        ),
      ],
    );
  }

  @override
  LoginViewModel createViewModel() {
    return LoginViewModel(LoginRepository());
  }

  @override
  void loadData() {}
}
