import 'package:hti_univerity/core/api/network/common/result.dart';

Future<Result<T>> executeMethod<T>({required Future<T> Function() callMethod }) async {
  try {
    var result = await callMethod();
    return Success(data: result);
  }catch(e, stackTrace) {
    return Failures(exception: e is Exception? e : Exception("unknown error"));
  }
}