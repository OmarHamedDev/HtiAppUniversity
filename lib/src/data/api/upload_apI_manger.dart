import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hti_univerity/core/api/network/constants/api_constants.dart';
import 'package:injectable/injectable.dart';
import '../model/response/upload_success_response_model/upload_success_response_model.dart';

abstract class UploadApiManger {
  Future<UploadSuccessResponseModel> createEvent({
    required File file,
    required String title,
    required String description,
  });
}

@Injectable(as: UploadApiManger)
class UploadApiManagerImpl implements UploadApiManger {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      headers: {
        "Content-Type": "application/json",
      },
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );
  @override
  Future<UploadSuccessResponseModel> createEvent({
    required File file,
    required String title,
    required String description,
  }) async {
    var data = FormData.fromMap({
      'files': [
        await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        )
      ],
      'Title': title,
      'Description': description,
    });

    var response = await dio.request(
      '/api/Admin/events/create',
      options: Options(
        method: 'POST',
      ),
      data: data,
    );

    return UploadSuccessResponseModel.fromJson(response.data);
  }
}
