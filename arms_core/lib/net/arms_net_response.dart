

/// Standardize the format of network layer responses.
class ArmsNetResponse<T>{
  int code;
  String? msg;
  T? data;

  ArmsNetResponse({ required this.code, this.msg, this.data});

}