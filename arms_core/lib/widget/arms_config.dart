import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/net/adapter/dio_adapter.dart';
import 'package:arms_core/router/arms_route_config.dart';

import '../net/arms_net.dart';

class ArmsConfig{
  ArmsConfig._();

   static  final ArmsConfig _instance = ArmsConfig._();

   ArmsRouteConfig? _routeConfig;


   factory ArmsConfig({required ArmsRouteConfig routeConfig, ArmsNetAdapter? netAdapter}){

     _instance._routeConfig = routeConfig;

     if(netAdapter != null){
       ArmsNet.instance.init(netAdapter);
     }
     else{
       ArmsNet.instance.init(DioAdapter());
     }
     return _instance;
   }

  // Provides methods to get or set configuration
  ArmsRouteConfig get routeConfig {
   if(_routeConfig == null){
     throw Exception('RouterConfig is null!Please make sure it has been initialized.');
   }
     return _routeConfig!;
  }
}