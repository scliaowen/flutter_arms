import 'dart:async';
import 'package:flutter_arms/src/data/datasources/remote/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import 'locator.config.dart';

/// Description:
/// Author:LiaoWen
/// Date:2024/7/1
final getIt = GetIt.instance;

@InjectableInit(initializerName: 'init',preferRelativeImports: true,asExtension: true)
FutureOr<void> configureDependencies() => getIt.init();

@module
abstract class RegisterModule{
  @singleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: '',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      )
    );

    // Todo: Add Dio Interceptor

    return dio;
  }


  @singleton
  ApiService providerApiService(Dio dio) => ApiService(dio);
}