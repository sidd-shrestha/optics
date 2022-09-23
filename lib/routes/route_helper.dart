import 'package:get/get.dart';
import 'package:optics/pages/glasses/popular_glasses.dart';
import 'package:optics/pages/splash/splash_page.dart';
import '../pages/cart/cart_page.dart';
import '../pages/glasses/recommended_glasses.dart';
import '../pages/home/home_page.dart';

class RouteHelper {
  static const String splashPage = "/splash_page";
  static const String initial = "/";
  static const String popular_glasses = "/popular_glasses";
  static const String recommended_glasses = "/recommended_glasses";
  static const String cartPage = "/cart_page";

  static String getSplashPage() => '$splashPage';
  static String getInitial() => '$initial';
  static String getPopularProduct(int pageId, String page) =>
      '$popular_glasses?pageId=$pageId&page=$page';
  static String getRecommendedProduct(int pageId, String page) =>
      '$recommended_glasses?pageId=$pageId&page=$page';
  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => SplashScreen()),
    GetPage(name: initial, page: () => HomePage()),
    GetPage(
        name: popular_glasses,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return PopularGlasses(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommended_glasses,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return RecommendedGlasses(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),
  ];
}
