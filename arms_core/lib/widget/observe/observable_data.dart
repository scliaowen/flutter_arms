import 'package:flutter/material.dart';

/// Description:@{provider.selector} does not feel changes to properties inside the object.This class can be used to fix this.
/// Author:LiaoWen
/// Date:2024/6/11

class ObservableData<T>{
  T? _value;
  int _version = 0;
  int _lastVersion = -1;

  ObservableData({Key? key, T? value}){
    _value = value;
  }

  set value(T? newValue){
    _version++;
    _value = newValue;
  }

  T? get value => _value;

  bool shouldRebuild(){
    var isUpdated = _version!= _lastVersion;
    if(isUpdated){
      _lastVersion = _version;
    }
    return isUpdated;
  }
}
