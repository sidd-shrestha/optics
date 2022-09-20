import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:optics/pages/glasses/popular_glasses.dart';

import '../pages/glasses/recommended_glasses.dart';
import '../pages/home/main_page.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popular_glasses = "/popular_glasses";
  static const String recommended_glasses = "/recommended_glasses";

  static String getInitial() => '$initial';
  static String getPopularProduct(int pageId) =>
      '$popular_glasses?pageId=$pageId';
  static String getRecommendedProduct(int pageId) =>
      '$recommended_glasses?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainPage()),
    GetPage(
        name: popular_glasses,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularGlasses(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommended_glasses,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedGlasses(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
  ];
}
