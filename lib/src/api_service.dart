import 'package:api_service/src/api_service_option.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ApiService {
  ///perform a http get request
  Future<Either<DioError, Response<T>>> getMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    CancelToken? cancelToken,
  });

  ///perform a http put request
  Future<Either<DioError, Response<T>>> putMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
    CancelToken? cancelToken,
  });

  ///perform a http delete request
  Future<Either<DioError, Response<T>>> deleteMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
    CancelToken? cancelToken,
  });

  ///perform a http post request
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
    CancelToken? cancelToken,
  });

  ///perform a http post request
  Future<Either<DioError, Response<T>>> patchMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
    CancelToken? cancelToken,
  });
}
