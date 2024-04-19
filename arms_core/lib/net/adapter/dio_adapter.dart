import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/net/request/arms_net_response.dart';

class DioAdapter extends ArmsNetAdapter{
  @override
  Future<ArmsNetResponse<T>> get<T>(String url, {Map<String, dynamic>? params, Map<String, dynamic>? heads}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<ArmsNetResponse<T>> post<T>(String url, {Map<String, dynamic>? params, Map<String, dynamic>? heads}) {
    // TODO: implement post
    throw UnimplementedError();
  }

}