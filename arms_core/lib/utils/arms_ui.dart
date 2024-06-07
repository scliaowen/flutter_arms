import 'package:arms_core/router/arms_navigator_provider.dart';
import 'package:arms_core/widget/loading_widget.dart';
import 'package:arms_core/widget/overlay_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Provides global overlay
// eg: loading without context
class ArmsUI {
  ArmsUI._();

  static OverlayEntry? _currentOverlay;

  static Widget showLoading(
      {double? width,
      double? height,
      Color? indicatorColor,
      Color? bgColor,
      String? message}) {
    hideLoading();

    var widget = LoadingWidget(
        indicator: CircularProgressIndicator(
          color: indicatorColor ?? Colors.black54,
        ),
        bgWidth: width ?? 180,
        bgHeight: height ?? 140,
        bgColor: bgColor ?? Colors.white,
        message: message ?? "加载中");
    showOverlay(widget: widget);
    return widget;
  }

  static void hideLoading() {
    removeOverlay();
  }

  static void showOverlay(
      {required Widget widget,
      double? bgWidth,
      double? bgHeight,
      AlignmentDirectional? alignment,
      Color? bgColor}) {
    _currentOverlay = OverlayEntry(
        builder: (context) => OverlayWrapper(
            bgWidth: bgWidth,
            bgHeight: bgHeight,
            alignment: alignment,
            bgColor: bgColor,
            child: widget));

    Overlay.of(ArmsNavigatorProvider.navigatorContext!)
        .insert(_currentOverlay!);
  }

  static void removeOverlay() {
    if (_currentOverlay != null) {
      _currentOverlay?.remove();
      _currentOverlay = null;
    }
  }
}
