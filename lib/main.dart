import 'package:flutter/material.dart';
import 'package:optics/controller/popular_product_controller.dart';
import 'package:optics/pages/glasses/popular_glasses.dart';
import 'package:optics/pages/home/main_page.dart';
import 'package:get/get.dart';
import 'pages/glasses/recommended_glasses.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
