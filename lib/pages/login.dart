import 'package:arms_core/arms_core.dart';
import 'package:flutter/material.dart';

import '../router/app_route_config.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTest("跳转Home", () async {
               context.pushNamed(AppRouteConfig.home.name, queryParameters: {"key":"value"});
            })
          ],
        ),
      ),
    );
  }

  _buildTest(String text, VoidCallback f) {
    return Container(
      color: Colors.green,
      child: GestureDetector(
        onTap: f,
        child: Container(
          color: Colors.lightBlueAccent,
          padding: EdgeInsets.all(20),
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
