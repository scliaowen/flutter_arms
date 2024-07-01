import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1

@RestApi(parser: Parser.MapSerializable)
abstract class ApiService{
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;
}