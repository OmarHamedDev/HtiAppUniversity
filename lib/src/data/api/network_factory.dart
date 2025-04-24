import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/api/network/constants/api_constants.dart';

@module
abstract class DioProvider {
  @lazySingleton
  Dio dioProvider() {
    final Dio dio = Dio(
      BaseOptions(
        headers: {
          "Content-Type": "application/json",
        },
        connectTimeout: const Duration(seconds: ApiConstants.duration),
        sendTimeout: const Duration(seconds: ApiConstants.duration),
        receiveTimeout: const Duration(seconds: ApiConstants.duration),
      ),
    );
    dio.interceptors.add(providePretty());
    return dio;
  }

  @lazySingleton
  LogInterceptor providePretty() {
    return LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      request: true,
    );
  }
}





// @lazySingleton
// class AppInterceptors extends InterceptorsWrapper{
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
//     String ? token=await getIt.get<CachingDataSecureStorage>().readData(key:CacheKeys.token);
//     print("token: $token" );
//     if(token !=null){
//      options.headers["token"] =token ;
//    }
//     super.onRequest(options, handler);
//   }

//}
