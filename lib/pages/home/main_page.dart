import 'package:flutter/material.dart';
import 'package:optics/pages/home/main_body.dart';
import 'package:optics/widgets/big_text.dart';
import 'package:optics/utils/dimensions.dart';
import 'package:optics/widgets/small_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      //showing the header
      Container(
        child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Nepal", color: Colors.blue),
                    SmallText(text: "KTM", color: Colors.black)
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: Colors.blue),
                  ),
                )
              ],
            )),
      ),
      //showing the body
      Expanded(child: SingleChildScrollView(child: MainBody())),
    ]));
  }
}
