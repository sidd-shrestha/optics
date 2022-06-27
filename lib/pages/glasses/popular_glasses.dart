import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:optics/utils/colors.dart';
import 'package:optics/utils/dimensions.dart';
import 'package:optics/widgets/app_column.dart';
import 'package:optics/widgets/app_icon.dart';
import 'package:optics/widgets/expandable_text.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularGlasses extends StatelessWidget {
  const PopularGlasses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Stack(
          children: [
            //background image
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.popularGlassesImgSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/img5.jpg"))),
                )),
            //icon widgets
            Positioned(
                top: Dimensions.height45,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios_new),
                    AppIcon(icon: Icons.shopping_bag_outlined),
                  ],
                )),
            //features
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.popularGlassesImgSize - 20,
                child: Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            topLeft: Radius.circular(Dimensions.radius20)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        AppColumn(text: "Rayban Glasses"),
                        SizedBox(height: Dimensions.height20),
                        BigText(text: "Introduce"),
                        SizedBox(height: Dimensions.height20),
                        //expandable text widget
                        Expanded(
                          child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                                text:
                                    "Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle   "),
                          ),
                        )
                      ],
                    )))

            //
          ],
        ),
        bottomNavigationBar: Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 247, 240),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    AppIcon(icon: Icons.remove),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    BigText(text: "0"),
                    AppIcon(icon: Icons.add),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: BigText(
                  text: "\Rs. 1500 | Add to Cart",
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.blue),
              )
            ],
          ),
        ));
  }
}
