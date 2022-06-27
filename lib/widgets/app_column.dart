import 'package:flutter/material.dart';
import 'package:optics/widgets/small_text.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        SmallText(text: "With all the glam."),
        SizedBox(height: Dimensions.height10),
        //ratings
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
    );
  }
}
