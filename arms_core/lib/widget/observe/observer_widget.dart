import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'observable_data.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/6/11
class ObserverWidget<VM extends ChangeNotifier, D> extends StatefulWidget {
  final Widget Function(BuildContext context, D value, Widget? child) builder;
  final VM viewModel;
  final Function(VM)? onReady;
  final Widget? child;
  final D Function(BuildContext, VM) observeData;

  const ObserverWidget({
    super.key,
    required this.viewModel,
    required this.observeData,
    required this.builder,
    this.child,
    this.onReady,
  });

  @override
  State<ObserverWidget> createState() => _ObserverWidgetState<VM, D>();
}

class _ObserverWidgetState<VM extends ChangeNotifier, D>
    extends State<ObserverWidget<VM, D>> {
  @override
  void initState() {
    super.initState();
    if (widget.onReady != null) {
      widget.onReady!(widget.viewModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.viewModel,
      child: Selector<VM, D>(
        builder: widget.builder,
        selector: (_, viewModel) => widget.observeData(context, viewModel),
        shouldRebuild: (previous, next) {
          if (next is ObservableData) {
            return next.shouldRebuild();
          } else {
            return previous != next;
          }
        },
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.viewModel.dispose();
  }
}