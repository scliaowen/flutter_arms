import 'package:flutter_arms/config/arms_route.dart';
import 'package:flutter_arms/config/arms_routes.dart';
import 'package:flutter_arms/core/router/navigator_provider.dart';
import 'package:go_router/go_router.dart';

/// Convert [ArmsRoute] to [GoRoute].
class RouterParser {
  static List<GoRoute> routes = [];

  static GoRouter router = GoRouter(
    navigatorKey: NavigatorProvider.navigatorKey,
    initialLocation: "/",
    routes: routes,
  );

  static void init() {
    for (var armsRoute in ArmsRoutes.routes) {
      routes.add(GoRoute(
        path: armsRoute.path,
        name: armsRoute.name,
        builder: (context, state) => armsRoute.widget,
      ));
    }
  }
}
