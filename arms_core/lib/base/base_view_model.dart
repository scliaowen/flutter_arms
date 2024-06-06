import 'package:arms_core/base/base_repository.dart';
import 'package:flutter/material.dart';

abstract class BaseViewModel<R extends BaseRepository> extends ChangeNotifier{

  late R repository;

  BaseViewModel(this.repository);

}