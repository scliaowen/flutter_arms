abstract class ArmsInterceptor{
  Map<String,dynamic> addHeader();
  bool onResponse(dynamic response);
  void onError(String? message);
}