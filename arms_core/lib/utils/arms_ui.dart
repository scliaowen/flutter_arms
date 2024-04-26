import 'package:arms_core/router/arms_navigator_provider.dart';
import 'package:arms_core/widget/loading.dart';
import 'package:flutter/material.dart';

class ArmsUI {
  static List<OverlayEntry> overlayList = [];
  static OverlayEntry? _loadingOverlay;

  static void showLoading({Widget? customWidget}) {
    hideLoading();

    customWidget ??= const DefLoading();
    _loadingOverlay =
        OverlayEntry(builder: (context) => SafeArea(child: customWidget!));
    Overlay.of(ArmsNavigatorProvider.navigatorContext!)
        .insert(_loadingOverlay!);
    overlayList.add(_loadingOverlay!);
  }

  static void hideLoading() {
    if (_loadingOverlay != null) {
      overlayList.remove(_loadingOverlay);
      _loadingOverlay?.remove();
      _loadingOverlay = null;
    }
  }

  static void removeLastOverlay() {

    var lastOverlay = overlayList.last;
    lastOverlay.remove();
    overlayList.removeLast();
  }
}
