import 'package:optics/controller/popular_product_controller.dart';
import 'package:optics/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:optics/data/repo/popular_product_repo.dart';
import 'package:optics/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
