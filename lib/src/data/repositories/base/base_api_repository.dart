import 'dart:io' show HttpStatus;
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../utils/resources/data_state.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
abstract class BaseApiRepository {

  Future<DataState<T>> getStateOf<T>({required Future<HttpResponse<T>> Function() request}) async {
    try {
      final httpResponse = await request();
      if(httpResponse.response.statusCode == HttpStatus.ok){
            return DataSuccess(httpResponse.data);
          }
          else{
            throw DioException(
                response: httpResponse.response,
                requestOptions: httpResponse.response.requestOptions);
          }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
