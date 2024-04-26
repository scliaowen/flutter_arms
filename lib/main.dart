import 'package:arms_core/arms_config.dart';
import 'package:arms_core/net/adapter/arms_net_options.dart';
import 'package:arms_core/net/arms_net_config.dart';
import 'package:arms_core/widget/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arms/router/app_route_config.dart';

void main() {
  runApp(const ArmsApp());
}

class ArmsApp extends StatefulWidget {
  const ArmsApp({super.key});

  @override
  State<ArmsApp> createState() => _ArmsAppState();
}

class _ArmsAppState extends State<ArmsApp> {
  @override
  Widget build(BuildContext context) {
    return ArmsMaterialApp(
      armsConfig: ArmsConfig(
          routeConfig: AppRouteConfig(),
          netConfig: ArmsNetConfig(options: ArmsNetOptions(baseUrl: ''))),
    );
  }
}
