import 'package:flutter/material.dart';
import 'package:flutter_arms/core/widget/arms_app.dart';


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
    return const ArmsMaterialApp();
  }
}

