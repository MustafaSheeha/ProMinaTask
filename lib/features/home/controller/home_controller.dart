import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:promina_gallery_task/core/api/api_key.dart';
import 'package:promina_gallery_task/core/api/end_points.dart';
import 'package:promina_gallery_task/core/services/api_service.dart';
import 'package:dio/dio.dart' as dio;

class HomeController extends GetxController {
  final ApiService _apiService = Get.find<ApiService>();
  List<XFile> imageList = [];
  XFile? _imageFile;

  void pickImage(XFile image) {
    _imageFile = image;
  }

  Future<void> uploadPicture() async {
    if (_imageFile != null) {
      try {
        final formData = dio.FormData.fromMap({
          ApiKey.img: await dio.MultipartFile.fromFile(_imageFile!.path),
        });

        await _apiService.post(
          EndPoints.upload,
          data: formData,
          // isFormData: true,
        );

        Get.snackbar('Success', 'Image uploaded successfully',
            snackPosition: SnackPosition.BOTTOM);
      } catch (e) {
        Get.snackbar('Error', 'Failed to upload image: $e',
            snackPosition: SnackPosition.BOTTOM);
      }
    } else {
      Get.snackbar('Error', 'No image selected',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> getImages() async {
    try {
      final response = await _apiService.get(EndPoints.myGallery);
      imageList = response["data"]["images"] as List<XFile>;
      Get.snackbar('Success', 'Images fetched successfully',
          snackPosition: SnackPosition.BOTTOM);
      update();
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch images: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
