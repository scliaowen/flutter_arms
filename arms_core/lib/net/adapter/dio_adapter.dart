import 'package:arms_core/net/adapter/arms_interceptor.dart';
import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/net/adapter/arms_net_options.dart';
import 'package:arms_core/net/arms_net_response.dart';
import 'package:dio/dio.dart';

class DioAdapter extends ArmsNetAdapter {
  static Dio? _dio;

  static Dio getDio() {
    _dio ??= Dio();
    return _dio!;
  }

  @override
  Future<ArmsNetResponse<T>> get<T>(String url,
      {Map<String, dynamic>? params, Map<String, dynamic>? heads}) async {
    try {
      Response response = await getDio().get(url,
          queryParameters: params, options: Options(headers: heads));
      return response.data;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  @override
  Future<ArmsNetResponse<T>> post<T>(String url,
      {Map<String, dynamic>? params, Map<String, dynamic>? heads}) async {
    Response response =
        await getDio().post(url, data: params, options: Options(headers: heads));
    return response.data;
  }

  @override
  setOptions(ArmsNetOptions options) {
    getDio().options = BaseOptions(
      baseUrl: options.baseUrl,
      connectTimeout: Duration(seconds: options.connectTimeout),
      receiveTimeout: Duration(seconds: options.receiveTimeout),
    );

    if(options.interceptors != null){
      getDio().interceptors.add(parseInterceptor(options.interceptors!));
    }
  }

  Interceptor parseInterceptor(ArmsInterceptor interceptor) {
    return InterceptorsWrapper(
      onRequest:(requestOptions,handler){
        Map<String,dynamic> headers = interceptor.addHeader();
        requestOptions.headers.addAll(headers);
        handler.next(requestOptions);
      },

      onResponse: (response,handler){
        interceptor.onResponse(response.data);
        handler.next(response);
    },

      onError: (error,handler){
        interceptor.onError(error.message);
        handler.next(error);
      }

    );
  }
}
