import 'package:flutter/material.dart';

/// Description:
/// Author:liaowen
/// Date:2024/6/7

class OverlayWrapper extends StatelessWidget {
  final double? bgWidth;
  final double? bgHeight;
  final AlignmentDirectional? alignment;
  final Color? bgColor;
  final Widget child;

  const OverlayWrapper(
      {super.key,
      required this.child,
      this.bgWidth,
      this.bgHeight,
      this.alignment,
      this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: bgWidth ?? double.infinity,
            height: bgHeight ?? double.infinity,
            color: bgColor ?? Colors.black.withOpacity(0.6)),
        Align(
          alignment: alignment ?? AlignmentDirectional.center,
          child: child,
        )
      ],
    );
  }
}
