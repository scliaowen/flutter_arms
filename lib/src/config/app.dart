import 'package:flutter/material.dart';
import 'package:flutter_arms/src/config/router/router.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
class ArmsApp extends StatelessWidget {
   ArmsApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

