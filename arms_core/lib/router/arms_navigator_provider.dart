import 'package:flutter/material.dart';

/// Provide a Global context.
class ArmsNavigatorProvider {
  ArmsNavigatorProvider._();

  static final ArmsNavigatorProvider _instance = ArmsNavigatorProvider._();

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  static GlobalKey<NavigatorState> get navigatorKey => _instance._navigatorKey;

  static BuildContext? get navigatorContext => _instance._navigatorKey.currentState?.context;


}