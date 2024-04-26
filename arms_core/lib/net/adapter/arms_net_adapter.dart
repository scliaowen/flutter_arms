import 'package:arms_core/net/adapter/arms_net_options.dart';

import '../arms_net_response.dart';

/// Abstract class for network adapter
abstract class ArmsNetAdapter{
  setOptions(ArmsNetOptions options);
  Future<ArmsNetResponse<T>> get<T>(String url,{Map<String,dynamic>? params, Map<String,dynamic>? heads});
  Future<ArmsNetResponse<T>> post<T>(String url,{Map<String,dynamic>? params, Map<String,dynamic>? heads});
}