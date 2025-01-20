import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/cart_page_two_global_Widget.dart';
import 'package:shopping/all_global_widget/delivery_box_widget.dart';
import 'package:shopping/screen_page/all_screen/payment_method_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class TotalPricePage extends StatefulWidget {
  const TotalPricePage({super.key});

  @override
  State<TotalPricePage> createState() => _TotalPricePageState();
}

class _TotalPricePageState extends State<TotalPricePage> {
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
              "Check out",
              style: myTextStyle.copyWith(fontSize: 16),
            ),
            const Spacer(),
            SvgPicture.asset(MyImage.cartIcon),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
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
            CardSecondPage(
                assetImage: MyImage.earphoneBig,
                title5: "Airpod Max by Apple",
                title6: "Variant: Gray",
                title7: "\$199.99",
                title8: "1 Quantity"),
            CardSecondPage(
                assetImage: MyImage.monitor,
                title5: "LG Led Monitor 32 Inch Display",
                title6: "Variant: Black",
                title7: "\$199.99",
                title8: "1 Quantity"),
            CardSecondPage(
                assetImage: MyImage.airpod1,
                title5: "Hign Quality Airpod",
                title6: "Variant: White",
                title7: "\$199.99",
                title8: "1 Quantity"),
            Text(
              "Hide list",
              style: myTextStyle.copyWith(color: MyColor.buttonColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const  DeliveryBoxWidget(title1: "Regula 2-4 days delivery"),
            const SizedBox(
              height: 50,
            ),
            const  DeliveryBoxWidget(title1: "apply discount"),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order Summery",
                        style: myTextStyle.copyWith(fontSize: 18),
                      ),
                      const Icon(Icons.keyboard_arrow_up),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Price (3 items)",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),

                      Text(
                        "\$2499.97",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courier",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),

                      Text(
                        "\$7.99",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Marketplace fee",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),

                      Text(
                        "\$1.23",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Totals",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),
                      Text(
                        "\$2599.97",
                        style: mySecondTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                            backgroundColor:
                            WidgetStateProperty.all(MyColor.buttonColor)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentMethodPage()));
                        },
                        child: Text(
                          "Select Payment method",
                          style: myTextStyle.copyWith(color: MyColor.whiteColor),
                        )),
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
