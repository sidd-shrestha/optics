import 'package:flutter/material.dart';
import 'package:optics/pages/glasses/popular_glasses.dart';
import 'package:optics/pages/home/main_page.dart';
import 'package:get/get.dart';

import 'pages/glasses/recommended_glasses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommendedGlasses(),
    );
  }
}
