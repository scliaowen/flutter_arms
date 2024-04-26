import 'package:arms_core/utils/arms_ui.dart';
import 'package:flutter/material.dart';

class ArmsNavigatorObservers extends NavigatorObserver{
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if(ArmsUI.overlayList.isNotEmpty){
      ArmsUI.removeLastOverlay();
    }
  }
}