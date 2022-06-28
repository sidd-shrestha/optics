import 'package:optics/controller/popular_product_controller.dart';
import 'package:optics/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:optics/data/repo/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://wwww.dbestech.com"));

  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
