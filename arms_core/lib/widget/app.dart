import 'package:arms_core/model/arms_model.dart';
import 'package:arms_core/router/router_parser.dart';
import 'package:arms_core/widget/arms_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Which defines the basic app elements.
class ArmsMaterialApp extends StatefulWidget {

  final ArmsConfig armsConfig;

  const ArmsMaterialApp({super.key, required this.armsConfig});

  @override
  State<ArmsMaterialApp> createState() => _ArmsMaterialAppState();
}

class _ArmsMaterialAppState extends State<ArmsMaterialApp> {
  ArmsConfig get _armsConfig => widget.armsConfig;
  final ArmsModel _armsModel = ArmsModel();

  @override
  void initState() {
    RouterParser.init(_armsConfig.routeConfig);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _armsModel),
      ],
      child: MaterialApp.router(
        routerConfig: RouterParser.router,
      ),
    );
  }
}
