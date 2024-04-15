import 'package:flutter/material.dart';
import 'package:flutter_arms/core/router/router_parser.dart';

class ArmsMaterialApp extends StatefulWidget {
  const ArmsMaterialApp({super.key});

  @override
  State<ArmsMaterialApp> createState() => _ArmsMaterialAppState();
}

class _ArmsMaterialAppState extends State<ArmsMaterialApp> {
  @override
  void initState() {
    RouterParser.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterParser.router,
    );
  }
}
