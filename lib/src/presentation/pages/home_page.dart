import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("HomePage"),
      ),
    );
  }
}
