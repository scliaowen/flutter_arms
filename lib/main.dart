
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arms/src/config/app.dart';
import 'package:flutter_arms/src/di/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp( ArmsApp());
}


