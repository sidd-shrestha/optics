import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:optics/utils/dimensions.dart';
import 'package:optics/widgets/app_icon.dart';
import 'package:optics/widgets/expandable_text.dart';

import '../../widgets/big_text.dart';

class RecommendedGlasses extends StatelessWidget {
  const RecommendedGlasses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 70,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_bag)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: "Gucci Glasses")),
                ),
              ),
              pinned: true,
              backgroundColor: Colors.blue,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/img2.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle  Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle  Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28.Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle soups. Brought to you by grandmas of earth. Chef John's One-Step Chicken Noodle Soup. 28. Here are 8 of the world’s greatest chicken noodle  "),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ))
          ],
        ),
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    bgColor: Colors.blue,
                    icon: Icons.remove),
                BigText(
                  text: "\Rs 2500 " + " X " + " 0",
                  color: Colors.black,
                  size: Dimensions.font20,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    bgColor: Colors.blue,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                    child: Icon(
                      Icons.favorite_sharp,
                      color: Colors.blue,
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.blue),
                  )
                ]),
          )
        ]));
  }
}
