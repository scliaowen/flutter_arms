import 'arms_route.dart';
import 'package:flutter_arms/pages/home.dart';
import 'package:flutter_arms/pages/login.dart';

/// The route configuration for the app.
/// The 'routers' list specifies the top-level routes for the app.
/// It must not be empty and must contain an [ArmsRoute] to match '/'.
class ArmsRoutes {
  static List<ArmsRoute> routes = [
    ArmsRoute(
      path: "/",
      name: "home",
      widget: const Home(),
    ),

    ArmsRoute(
      path: "/login",
      name: "login",
      widget: const Login(),
    ),



  ];
}
