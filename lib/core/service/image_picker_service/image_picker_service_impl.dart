import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import 'image_picker_service.dart';
import 'image_source_type.dart';

@Injectable(as: ImagePickerService)
class ImagePickerServiceImpl   implements ImagePickerService {
  final ImagePicker _picker = ImagePicker();


  @override
  Future<XFile?> pickImage({required ImageSourceType imageSourceType }) async {
    switch (imageSourceType) {
      case ImageSourceType.camera:
         return _pickImageFromCamera();
      case ImageSourceType.gallery:
    return _pickImageFromGallery();
        }

  }

  Future<XFile?> _pickImageFromGallery() async {
    return await _picker.pickImage(source: ImageSource.gallery);
  }
  Future<XFile?> _pickImageFromCamera() async {
    return await _picker.pickImage(source: ImageSource.camera);
  }

}

