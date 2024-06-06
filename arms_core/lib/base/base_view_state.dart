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
    loadData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = Provider.of<VM>(context);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        sized: false,
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(title?? "")
          ),
          body: buildView(),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  VM createViewModel();

  void loadData();

  Widget buildView();
}
