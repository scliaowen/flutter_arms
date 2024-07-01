/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
abstract class BaseResponse<T>{
  int code;
  T? data;
  String? message;

  BaseResponse(this.code, {this.data, this.message});
}