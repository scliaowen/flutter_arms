import 'package:arms_core/router/arms_route.dart';
import 'package:arms_core/router/arms_route_config.dart';
import 'package:flutter_arms/pages/home.dart';
import 'package:flutter_arms/view/login_view.dart';

/// The route configuration for the app.
/// The 'routers' list specifies the top-level routes for the app.
/// It must not be empty and must contain an [ArmsRoute] to match '/'.
class AppRouteConfig extends ArmsRouteConfig {
  AppRouteConfig._();

  static final AppRouteConfig _instance = AppRouteConfig._();

  factory AppRouteConfig() {
    return _instance;
  }

  /// 1. Declared routes
  static ArmsRoute home = ArmsRoute(
    path: "/",
    name: "home",
    widget: const Home(),
  );

  static ArmsRoute login = ArmsRoute(
    path: "/login",
    name: "login",
    widget: const LoginView(),
  );

  /// 2. Add routes to the list
  @override
  List<ArmsRoute> initRoutes() {
    return [
      login,
      home,
    ];
  }
}
