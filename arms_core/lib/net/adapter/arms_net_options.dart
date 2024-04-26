import 'arms_interceptor.dart';

class ArmsNetOptions {
  final String baseUrl;
  final int connectTimeout;
  final int receiveTimeout;
  ArmsInterceptor? interceptors;

  ArmsNetOptions({
    required this.baseUrl,
    int? connectTimeout,
    int? receiveTimeout,
    this.interceptors,
  })  : connectTimeout = connectTimeout ?? 10,
        receiveTimeout = receiveTimeout ?? 10;
}
