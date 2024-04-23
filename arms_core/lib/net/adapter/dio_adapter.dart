import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/net/request/arms_net_response.dart';
import 'package:dio/dio.dart';

class DioAdapter extends ArmsNetAdapter {
  final Dio _dio = Dio();

  @override
  Future<ArmsNetResponse<T>> get<T>(String url,
      {Map<String, dynamic>? params, Map<String, dynamic>? heads}) async {
    try {
      Response response = await _dio.get(url,
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
        await _dio.post(url, data: params, options: Options(headers: heads));
    return response.data;
  }

  @override
  void initialize({required String baseUrl, int? connectTimeout = 10000, int? receiveTimeout = 10000}) {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(milliseconds: connectTimeout!),
      receiveTimeout: Duration(milliseconds: receiveTimeout!),
    );
  }


}
