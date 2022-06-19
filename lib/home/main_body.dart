import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:optics/widgets/big_text.dart';
import 'package:optics/widgets/icon_and_text_widget.dart';
import 'package:optics/widgets/small_text.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.redAccent,
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }));
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isOdd ? Colors.grey : Colors.blueGrey,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/img3.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 110,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Sunglasses"),
                  SizedBox(height: 10),
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
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IconAndText(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: Colors.green)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
