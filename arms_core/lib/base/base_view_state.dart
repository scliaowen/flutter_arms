import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../utils/arms_ui.dart';
import 'base_view_model.dart';

abstract class BaseViewState<T extends StatefulWidget, VM extends BaseViewModel>
    extends State<T> {
  late VM viewModel;
  String? title;

  @override
  void initState() {
    debugPrint("initState");
    super.initState();
    viewModel = createViewModel();
    loadData();
  }

  @override
  @override
  Widget build(BuildContext context) {
    debugPrint(" build ");
    return AnnotatedRegion<SystemUiOverlayStyle>(
      sized: false,
      value: SystemUiOverlayStyle.light,
      child: ChangeNotifierProvider(
        create: (_) => viewModel,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title ?? ""),
          ),
          body: buildView(),
        ),
      ),
    );
  }

  VM createViewModel();

  void loadData();

  Widget buildView();

}
