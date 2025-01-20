import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/color_button_widget.dart';
import 'package:shopping/screen_page/all_screen/cart_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

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
            Text(
              "Details Product",
              style: myTextStyle.copyWith(fontSize: 16),
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
                },
                child: SvgPicture.asset(MyImage.cartIcon)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 286,
              width: 390,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MyImage.earphoneBig), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Air pods max by Apple",
                    style: myTextStyle.copyWith(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ 1999,99",
                        style: myTextStyle.copyWith(fontSize: 18),
                      ),
                      Text(
                        "( 219 people buy this )",
                        style: mySecondTextStyle,
                      ),
                      const Spacer(),
                      CircleAvatar(
                          backgroundColor: MyColor.cirlceAveterColor,
                          child: Image(image: AssetImage(MyImage.loveIcon)))
                      // Spacer(),
                      // SvgPicture.asset(MyImage.notificationIcon),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose the color",
                    style: mySecondTextStyle.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColorButton(buttonColor: MyColor.choiceColor1),
                      const SizedBox(
                        width: 8,
                      ),
                      ColorButton(buttonColor: MyColor.choiceColor2),
                      const SizedBox(
                        width: 8,
                      ),
                      ColorButton(buttonColor: MyColor.choiceColor3),
                      const SizedBox(
                        width: 8,
                      ),
                      ColorButton(buttonColor: MyColor.choiceColor4),
                      const SizedBox(
                        width: 8,
                      ),
                      ColorButton(buttonColor: MyColor.choiceColor5),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 65,
              width: 350,
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(MyImage.appleLogo)),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Text(
                        "Apple Store",
                        style: myTextStyle.copyWith(fontSize: 16),
                      ),
                      Text("online 12 min ago", style: mySecondTextStyle),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 107,
                    child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(MyColor.whiteColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(color: MyColor.textColor)
                          )
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Follow",
                          style: myTextStyle,
                        )),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description of product",
                      style: myTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquot arc id incident tells arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.",
                          style: mySecondTextStyle.copyWith(
                              color: MyColor.textColor),
                          children: [
                            TextSpan(
                              text: " read more",
                              style: mySecondTextStyle.copyWith(
                                  color: MyColor.redColor),
                            ),
                          ]),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 45,
                      width: 170,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              backgroundColor:
                                  WidgetStateProperty.all(MyColor.buttonColor)),
                          onPressed: () {},
                          child: Text(
                            "Add to Cart",
                            style:
                                myTextStyle.copyWith(color: MyColor.whiteColor),
                          ))),
                  SizedBox(
                    height: 45,
                    width: 170,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Buy Now", style: myTextStyle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
