import 'package:arms_core/widget/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arms/config/app_route_config.dart';


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
    return ArmsMaterialApp(armsRouteConfig: AppRouteConfig());
  }
}

