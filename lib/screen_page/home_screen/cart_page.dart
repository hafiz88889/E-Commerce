import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/cart_page_global_widget.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Cart",
              style: myTextStyle.copyWith(fontSize: 16),
            ),
            SvgPicture.asset(MyImage.cartIcon),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery To",
                  style: myTextStyle,
                ),
                Spacer(),
                Text(
                  "Mirpur,Dhaka -1216",
                  style: myTextStyle,
                ),
                Icon(Icons.keyboard_arrow_down_sharp),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CartPageWidget(
              assetImage: MyImage.earphoneBig,
              title1: "Airpod Max by Apple",
              title2: "Variant: Grey",
              title3: "\$199.99"
          ),
          CartPageWidget(
              assetImage: MyImage.monitor,
              title1: "LG Led Monitor 32 Inch Display",
              title2: "Variant Black",
              title3: "\$159.99"
          ),
          CartPageWidget(
              assetImage: MyImage.earphone2,
              title1: "Hign Quality Headphone ",
              title2: "Variant: White",
              title3: "\$99.99"
          ),
          CartPageWidget(
              assetImage: MyImage.wiredEarphone,
              title1: "Wired Headphone Made by Apple",
              title2: "Variant: White",
              title3: "\$59.99"
          ),
        ],
      ),
    );
  }
}
