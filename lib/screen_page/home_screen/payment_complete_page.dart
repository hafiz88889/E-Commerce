import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/payment_metod_page_widget.dart';
import 'package:shopping/screen_page/home_screen/home_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class PaymentCompletePage extends StatefulWidget {
  const PaymentCompletePage({super.key});

  @override
  State<PaymentCompletePage> createState() => _PaymentCompletePageState();
}

class _PaymentCompletePageState extends State<PaymentCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
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
          Container(
            height: 620,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                color: MyColor.whiteColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage(MyImage.verificationIcon),
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Congrats! your payment \n         is successfully",
                  style: myTextStyle.copyWith(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Track your order or just chat directly to the \nseller. Download order summery in down below  ",
                  style: mySecondTextStyle.copyWith(fontSize: 14),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      backgroundColor: WidgetStateProperty.all(MyColor.buttonColor)
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePageActivity()));
                      },
                      child: Text("Back to home",style: myTextStyle.copyWith(color: MyColor.whiteColor),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
