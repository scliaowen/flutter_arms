import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              context.pop("result");
            },
            child: Text("home：${args.keys.length}"),
          ),
        ),
      ),
    );
  }
}
