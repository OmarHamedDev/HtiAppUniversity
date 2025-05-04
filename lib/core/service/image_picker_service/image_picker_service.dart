import 'package:image_picker/image_picker.dart';

import 'image_picker_service_impl.dart';
import 'image_source_type.dart';

abstract class ImagePickerService {
  Future<XFile?> pickImage({required ImageSourceType imageSourceType});
}
