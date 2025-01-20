import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/cart_page_global_widget.dart';
import 'package:shopping/screen_page/all_screen/checkout_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}
class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.whiteColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Text(
              "Your Cart",
              style: myTextStyle.copyWith(fontSize: 16),
            ),
            const Spacer(),
            SvgPicture.asset(MyImage.cartIcon),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery To",
                    style: myTextStyle,
                  ),
                  const Spacer(),
                  Text(
                    "Mirpur,Dhaka -1216",
                    style: myTextStyle,
                  ),
                  const Icon(Icons.keyboard_arrow_down_sharp),
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
                title3: "\$199.99"),
            CartPageWidget(
                assetImage: MyImage.monitor,
                title1: "LG Led Monitor 32 Inch Display",
                title2: "Variant Black",
                title3: "\$159.99"),
            CartPageWidget(
                assetImage: MyImage.earphone2,
                title1: "Hign Quality Headphone ",
                title2: "Variant: White",
                title3: "\$99.99"),
            CartPageWidget(
                assetImage: MyImage.wiredEarphone,
                title1: "Wired Headphone Made by Apple",
                title2: "Variant: White",
                title3: "\$59.99"),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Totals",
                        style: myTextStyle,
                      ),
                      Text(
                        "\$0.00",
                        style: myTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                      style: ButtonStyle(shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const CheckoutPageOne()));
                      },
                      child: Text(
                        "Continue for Payment",
                        style: myTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
