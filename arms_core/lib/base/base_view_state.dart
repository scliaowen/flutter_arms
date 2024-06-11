import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'base_view_model.dart';

abstract class BaseViewState<T extends StatefulWidget, VM extends BaseViewModel>
    extends State<T> {
  late VM viewModel;
  String? title;

  @override
  void initState() {
    super.initState();
    viewModel = createViewModel();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      sized: false,
      value: SystemUiOverlayStyle.light,
      child: ChangeNotifierProvider.value(
        value: viewModel,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title ?? ""),
          ),
          body: buildView(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.dispose();
  }

  VM createViewModel();

  void loadData();

  Widget buildView();
}
