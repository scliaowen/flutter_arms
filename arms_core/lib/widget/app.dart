import 'package:arms_core/router/arms_route_config.dart';
import 'package:arms_core/router/navigator_provider.dart';
import 'package:arms_core/router/router_parser.dart';
import 'package:flutter/material.dart';


class ArmsMaterialApp extends StatefulWidget {
  final ArmsRouteConfig armsRouteConfig;
  const ArmsMaterialApp({super.key, required this.armsRouteConfig});

  @override
  State<ArmsMaterialApp> createState() => _ArmsMaterialAppState();
}

class _ArmsMaterialAppState extends State<ArmsMaterialApp> {
  ArmsRouteConfig get _armsRouteConfig => widget.armsRouteConfig;

  @override
  void initState() {
    RouterParser.init(_armsRouteConfig);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterParser.router,
    );
  }
}
