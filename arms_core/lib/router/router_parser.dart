import 'package:arms_core/router/arms_route.dart';
import 'package:arms_core/router/arms_route_config.dart';
import 'package:go_router/go_router.dart';

import 'navigator_provider.dart';

/// Convert [ArmsRoute] to [GoRoute].
class RouterParser {
  static List<GoRoute> routes = [];

  static GoRouter router = GoRouter(
    navigatorKey: NavigatorProvider.navigatorKey,
    initialLocation: "/",
    routes: routes,
  );

  static void init(ArmsRouteConfig routeConfig) {
    if(routeConfig.initRoutes().isEmpty){
      throw Exception("The route can not be empty!");
    }
    for (var armsRoute in routeConfig.initRoutes()) {
      routes.add(GoRoute(
        path: armsRoute.path,
        name: armsRoute.name,
        builder: (context, state) => armsRoute.widget,
      ));
    }
  }
}
