import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../config/router/router.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashPage> {

  @override
  void initState() {
    scheduleMicrotask(() async {
      await Future.delayed(Duration(seconds: 3));
      if(!mounted) return;
      await context.router.replaceAll([const HomeRoute()]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Splash',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
