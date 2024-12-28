import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/payment_method_small_box_widget.dart';
import 'package:shopping/all_global_widget/payment_metod_page_widget.dart';
import 'package:shopping/screen_page/home_screen/payment_complete_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment method",
              style: myTextStyle.copyWith(fontSize: 16),
            ),
            SvgPicture.asset(MyImage.cartIcon),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Select existing Card",
                      style: myTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            PaymentMethodPageGlobalWidget(
                title1: "",
                title2: "Enter the card number",
                title3: MyImage.cardIcon,
                title4: MyImage.deletIcon),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                "Or input new card",
                style: myTextStyle.copyWith(fontSize: 16),
              ),
            ),
            PaymentMethodPageGlobalWidget(
                title1: "Card number",
                title2: "Enter the card number",
                title3: MyImage.cardIcon,
                title4: MyImage.visaIcon),
            const Row(
              children: [
                SmallBoxWidget(
                    title1: "Exp date", title2: "mm/yy "),
                SmallBoxWidget(
                    title1: "Security code", title2: "ccv/csv"),
              ],
            ),
            const SmallBoxWidget(
                title1: "Card holder", title2: "Enter card holder name "),
                const SizedBox(height: 220,),
                Container(
                  margin: const EdgeInsets.all(10),
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order Summery",
                            style: myTextStyle.copyWith(fontSize: 18),
                          ),
                          const Icon(Icons.keyboard_arrow_down_rounded),
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
                            "\$2499.97",
                            style: mySecondTextStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentCompletePage()));
                            },
                            child: Text(
                              "Continue",
                              style: myTextStyle.copyWith(color: MyColor.whiteColor),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),


        //   ],
        // ),
      ),
    );
  }
}
