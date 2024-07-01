import 'package:flutter/material.dart';
import 'package:flutter_arms/src/config/router/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
class ArmsApp extends StatelessWidget {
  ArmsApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
