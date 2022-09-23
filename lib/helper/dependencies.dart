import 'package:optics/controller/popular_product_controller.dart';
import 'package:optics/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:optics/data/repo/popular_product_repo.dart';
import 'package:optics/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/cart_controller.dart';
import '../controller/recommended_product_controller.dart';
import '../data/repo/cart_repo.dart';
import '../data/repo/recommended_product_repo.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
