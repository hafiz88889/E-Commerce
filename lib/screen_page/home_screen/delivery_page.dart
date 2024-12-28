import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/cart_page_two_global_Widget.dart';
import 'package:shopping/all_global_widget/select_delivery_global_widget.dart';
import 'package:shopping/screen_page/home_screen/total_price_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class CheckOutPageTwo extends StatefulWidget {
  const CheckOutPageTwo({super.key});

  @override
  State<CheckOutPageTwo> createState() => _CheckOutPageTwoState();
}

class _CheckOutPageTwoState extends State<CheckOutPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColor.whiteColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Check out",
                style: myTextStyle.copyWith(fontSize: 16),
              ),
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
              const SizedBox(
                height: 17,
              ),
              Container(
                height: 380,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: MyColor.whiteColor),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select the Delivery",
                            style: myTextStyle.copyWith(fontSize: 16),
                          ),
                          const Icon(Icons.close),
                        ],
                      ),
                      const SelectTheDelivery(
                          title1: "Express",
                          title2: "1-3 days delivey ",
                          title3: "\$14.99"),
                      InkWell(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const TotalPricePage()));
                        },
                        child:  const SelectTheDelivery(
                            title1: "Regular",
                            title2: "2-4 days delivey ",
                            title3: "\$7.99"),
                      ),
                      const SelectTheDelivery(
                          title1: "Cargo",
                          title2: "7-4 days delivey ",
                          title3: "\$2.99"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
