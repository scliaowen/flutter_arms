import 'package:arms_core/net/adapter/arms_net_adapter.dart';

class ArmsNet {
  ArmsNet._();
  static  final ArmsNet _instance = ArmsNet._();
  static get instance => _instance;

  void config({
    String? baseUrl,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    ArmsNetAdapter? adapter,
  }){
    // todo how to use these parameters?
  }
}