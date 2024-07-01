import 'package:dio/dio.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
abstract class DataState<T>{
  T? data;
  DioException? exception;

  DataState({this.data, this.exception});
}

class DataSuccess<T> extends DataState<T> {
   DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T>{
  DataFailed(DioException exception) : super(exception: exception);
}