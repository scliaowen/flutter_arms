import 'package:arms_core/net/adapter/arms_net_adapter.dart';
import 'package:arms_core/net/adapter/arms_net_options.dart';
import 'package:arms_core/net/adapter/dio_adapter.dart';

class ArmsNetConfig {
  final ArmsNetAdapter netAdapter;
  final ArmsNetOptions options;

  ArmsNetConfig({required this.options, ArmsNetAdapter? adapter})
      : netAdapter = adapter ?? DioAdapter();
}
