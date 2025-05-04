import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

class UploadExamFileSheet extends StatelessWidget {
  const UploadExamFileSheet({super.key});

  Future<void> _pickAndUploadFile(BuildContext context) async {
    // اختيار الملف
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null && result.files.single.path != null) {
      String filePath = result.files.single.path!;
      String fileName = result.files.single.name;

      try {
        var data = FormData.fromMap({
          'files': [
            await MultipartFile.fromFile(filePath, filename: fileName)
          ],
        });

        var dio = Dio();
        var response = await dio.request(
          'https://84fe-41-237-203-177.ngrok-free.app/api/Admin/upload-course-file',
          options: Options(method: 'POST'),
          data: data,
        );

        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('تم رفع الملف بنجاح ✅')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('فشل في رفع الملف ❌')),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('حدث خطأ: $e')),
        );
      }
    } else {
      // المستخدم لم يختار ملف
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('لم يتم اختيار أي ملف')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'اختار ملف الامتحان Excel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () => _pickAndUploadFile(context),
            icon: const Icon(Icons.upload_file),
            label: const Text('اختر و ارفع الملف'),
          ),
        ],
      ),
    );
  }
}
