import 'package:arms_core/net/arms_net_config.dart';
import 'package:arms_core/net/arms_net_response.dart';

class ArmsNet {
  ArmsNet._();

  static final ArmsNet _instance = ArmsNet._();

  static ArmsNet get instance => _instance;

  late ArmsNetConfig _netConfig;

  ArmsNet init(ArmsNetConfig netConfig) {
   _netConfig = netConfig;
   _netConfig.netAdapter.setOptions(_netConfig.options);
    return _instance;
  }



  Future get(String url,
      {Map<String, dynamic>? params, Map<String, dynamic>? heads}) async {
     ArmsNetResponse response = await _netConfig.netAdapter.get(url, params: params, heads: heads);
     print(response);

     switch(response.code){

     }
  }
}
