import 'package:arms_core/arms_core.dart';
import 'package:flutter/material.dart';

import '../router/app_route_config.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightBlue,
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              context.pushNamed(AppRouteConfig.login.name);
            },
            child: Text("home：${args}"),
          ),
        ),
      ),
    );
  }
}
