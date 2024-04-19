import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/router/arms_route_config.dart';

class ArmsConfig{
  ArmsConfig._();

  static ArmsConfig? _instance;

   ArmsRouteConfig? _routeConfig;
   ArmsNetAdapter? _netAdapter;

   factory ArmsConfig({required ArmsRouteConfig routeConfig, ArmsNetAdapter? netAdapter}){
     _instance ??= ArmsConfig._();

     _instance!._routeConfig = routeConfig;

     if(netAdapter != null){
       _instance!.netAdapter = netAdapter;
     }
     return _instance!;
   }

  // Provides methods to get or set configuration
  ArmsRouteConfig get routeConfig => _routeConfig!;
  // set routeConfig(ArmsRouteConfig? value) => _routeConfig = value;

  ArmsNetAdapter? get netAdapter => _netAdapter;
  set netAdapter(ArmsNetAdapter? value) => _netAdapter = value;
}