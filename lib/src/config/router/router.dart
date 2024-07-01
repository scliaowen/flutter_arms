import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/home_page.dart';
import '../../presentation/pages/splash_page.dart';

part 'router.gr.dart';
/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: SplashRoute.page, initial: true),
    AutoRoute(path: '/home',page: HomeRoute.page)
  ];

// @override RouteType get defaultRouteType => RouteType.custom(transitionsBuilder: TransitionsBuilders.fadeIn);
}