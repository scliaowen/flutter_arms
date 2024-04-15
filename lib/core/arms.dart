import 'package:flutter/cupertino.dart';
import 'package:flutter_arms/core/router/navigator_provider.dart';

/// Provide access entry to the Arms series.
/// Include global context、cache、http
/// Using the Singleton Pattern to create.
class Arms {
  Arms._();
  static final Arms _instance = Arms._();
  factory Arms() {
    return _instance;
  }

  static BuildContext? get context => NavigatorProvider.navigatorContext;
}