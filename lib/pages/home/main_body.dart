import 'package:flutter/material.dart';
import 'package:optics/controller/popular_product_controller.dart';
import 'package:optics/data/repo/popular_product_repo.dart';
import 'package:optics/utils/dimensions.dart';
import 'package:optics/widgets/app_column.dart';
import 'package:optics/widgets/big_text.dart';
import 'package:optics/widgets/icon_and_text_widget.dart';
import 'package:optics/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return Container(
              // color: Colors.redAccent,
              height: Dimensions.pageView,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: popularProducts.PopularProductList.length,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  }));
        }),
        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            BigText(text: "Popular"),
            SizedBox(width: Dimensions.width10),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: BigText(
                text: ".",
                color: Colors.black,
              ),
            ),
            SizedBox(width: Dimensions.width10),
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: SmallText(
                text: "Glasses",
                color: Colors.black,
              ),
            ),
          ]),
        ),
        //list of glasses

        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    //image section
                    Container(
                      height: Dimensions.listViewImgSize,
                      width: Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/img5.jpg"))),
                    ),
                    //text section
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTxtSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight:
                                  Radius.circular(Dimensions.radius20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: AppColumn(
                            text: "Rayban Glasses",
                          ),
                        ),
                      ),
                    )
                  ],
                ));
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isOdd ? Colors.grey : Colors.blueGrey,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/img5.jpg"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    )
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Sunglasses"),
                    SizedBox(height: Dimensions.height10),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 15,
                          );
                        })),
                        SizedBox(width: 10),
                        SmallText(text: "4.5"),
                        SizedBox(width: 10),
                        SmallText(text: "222"),
                        SizedBox(width: 10),
                        SmallText(text: "comments")
                      ],
                    ),
                    SizedBox(height: Dimensions.height20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndText(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: Colors.green),
                        IconAndText(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: Colors.green),
                        IconAndText(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: Colors.green),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
