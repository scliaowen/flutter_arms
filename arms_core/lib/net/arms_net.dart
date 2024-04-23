import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/net/request/arms_net_response.dart';

class ArmsNet {
  ArmsNet._();

  static final ArmsNet _instance = ArmsNet._();

  static get instance => _instance;
  late ArmsNetAdapter netAdapter;

  ArmsNet init(ArmsNetAdapter adapter) {
    netAdapter = adapter;
    return _instance;
  }

  void config({
    required String baseUrl,
    int? connectTimeout,
    int? receiveTimeout,
    ArmsNetAdapter? adapter,
  }) {
    netAdapter.initialize(
        baseUrl: baseUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout);
  }

  Future get(String url,
      {Map<String, dynamic>? params, Map<String, dynamic>? heads}) async {
     ArmsNetResponse response = await netAdapter.get(url, params: params, heads: heads);

     switch(response.code){

     }
  }
}
