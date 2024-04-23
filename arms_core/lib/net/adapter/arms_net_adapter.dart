import '../request/arms_net_response.dart';

/// Abstract class for network adapter
abstract class ArmsNetAdapter{
  void initialize({required String baseUrl,int? connectTimeout=10000,int? receiveTimeout=10000});
  Future<ArmsNetResponse<T>> get<T>(String url,{Map<String,dynamic>? params, Map<String,dynamic>? heads});
  Future<ArmsNetResponse<T>> post<T>(String url,{Map<String,dynamic>? params, Map<String,dynamic>? heads});
}