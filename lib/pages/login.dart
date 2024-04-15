import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arms/core/arms.dart';
import 'package:flutter_arms/core/router/navigator_provider.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var text = "跳转Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTest("$text", () async {
              var res = await context.pushNamed("home");
              setState(() {
                text = "$res";
              });
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
