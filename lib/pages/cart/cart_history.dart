import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:optics/controller/cart_controller.dart';
import 'package:optics/models/cart_model.dart';
import 'package:optics/routes/route_helper.dart';
import 'package:optics/utils/app_constants.dart';
import 'package:optics/utils/dimensions.dart';
import 'package:optics/widgets/app_icon.dart';
import 'package:optics/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:optics/widgets/small_text.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var getCartHistoryList =
        Get.find<CartController>().getCartHistoryList().reversed.toList();

    Map<String, int> cartItemsPerOrder = Map();

    for (int k = 0; k < getCartHistoryList.length; k++) {
      if (cartItemsPerOrder.containsKey(getCartHistoryList[k].time)) {
        cartItemsPerOrder.update(getCartHistoryList[k].time!, (val) => ++val);
      } else {
        cartItemsPerOrder.putIfAbsent(getCartHistoryList[k].time!, () => 1);
      }
    }
    List<int> cartItemsPerOrderToList() =>
        cartItemsPerOrder.entries.map((f) => f.value).toList();

    List<String> cartOrderTimeToList() =>
        cartItemsPerOrder.entries.map((f) => f.key).toList();

    List<int> itemsPerOrder = cartItemsPerOrderToList();

    var listCounter = 0;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height10 * 10,
            width: double.maxFinite,
            color: Colors.blueAccent,
            padding: EdgeInsets.only(top: Dimensions.height45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BigText(
                  text: "Cart History",
                  color: Colors.white,
                ),
                AppIcon(
                  icon: Icons.shopping_bag_outlined,
                  // bgColor: Colors.blueAccent,
                  iconColor: Colors.blueAccent,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(children: [
                  for (int i = 0; i < itemsPerOrder.length; i++)
                    Container(
                      height: Dimensions.height30 * 4,
                      margin: EdgeInsets.only(bottom: Dimensions.height20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (() {
                              DateTime parseDate =
                                  DateFormat("yyyy-MM-dd HH:mm:ss").parse(
                                      getCartHistoryList[listCounter].time!);
                              var inputDate =
                                  DateTime.parse(parseDate.toString());
                              var outputFormat =
                                  DateFormat("dd/MM/yyyy hh:mm a");
                              var outputDate = outputFormat.format(inputDate);
                              return BigText(text: outputDate);
                            }()),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Wrap(
                                    direction: Axis.horizontal,
                                    children: List.generate(itemsPerOrder[i],
                                        (index) {
                                      if (listCounter <
                                          getCartHistoryList.length) {
                                        listCounter++;
                                      }
                                      return index <= 2
                                          ? Container(
                                              height: Dimensions.height20 * 4,
                                              width: Dimensions.height20 * 4,
                                              margin: EdgeInsets.only(
                                                  right:
                                                      Dimensions.width10 / 2),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions.radius15 /
                                                              2),
                                                  image: DecorationImage(
                                                      image: NetworkImage(AppConstants
                                                              .BASE_URL +
                                                          AppConstants
                                                              .UPLOAD_URL +
                                                          getCartHistoryList[
                                                                  listCounter -
                                                                      1]
                                                              .productImage!))),
                                            )
                                          : Container();
                                    })),
                                Container(
                                  height: Dimensions.height20 * 4,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SmallText(
                                        text: "Total",
                                        color: Colors.black,
                                      ),
                                      BigText(
                                        // for(itemsPerorder[i]>1)
                                        text: "${itemsPerOrder[i]}Items",
                                        color: Colors.black,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          var orderTime = cartOrderTimeToList();
                                          Map<int, CartModel> moreOrder = {};
                                          for (int j = 0;
                                              j < getCartHistoryList.length;
                                              j++) {
                                            if (getCartHistoryList[j].time ==
                                                orderTime[i]) {
                                              moreOrder.putIfAbsent(
                                                  getCartHistoryList[j].id!,
                                                  () =>
                                                      CartModel.fromStorageJson(
                                                          jsonDecode(jsonEncode(
                                                              getCartHistoryList[
                                                                  j]))));
                                              // print("My order time is " +
                                              //     orderTime[j]);
                                              // print(
                                              //     "The cart or product id is  " +
                                              //         getCartHistoryList[j]
                                              //             .id
                                              //             .toString());
                                            }
                                          }
                                          Get.find<CartController>().setItems =
                                              moreOrder;
                                          Get.find<CartController>()
                                              .addToCartList();
                                          Get.toNamed(
                                              RouteHelper.getCartPage());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions.width10,
                                              vertical:
                                                  Dimensions.height10 / 2),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.radius15 / 3),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.blueAccent)),
                                          child: SmallText(
                                            text: "Add more",
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                    )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
