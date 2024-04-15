import 'package:flutter/cupertino.dart';

/// Provide a Global context.
class NavigatorProvider {
  NavigatorProvider._();

  static final NavigatorProvider _instance = NavigatorProvider._();

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  static GlobalKey<NavigatorState> get navigatorKey => _instance._navigatorKey;

  static BuildContext? get navigatorContext => _instance._navigatorKey.currentState?.context;

}