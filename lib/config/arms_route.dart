import 'package:flutter/material.dart';
import 'package:flutter_arms/core/router/router_parser.dart';
import 'package:go_router/go_router.dart';

/// A route that is visually above the matching parent route using the [Navigator].
/// It will be converted to [GoRoute].See[RouterParser].

class ArmsRoute {
  final String path;
  final String name;
  final Widget widget;

  ArmsRoute({
    required this.path,
    required this.name,
    required this.widget,
  });
}