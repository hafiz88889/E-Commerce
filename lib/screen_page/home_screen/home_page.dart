import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping/all_global_widget/catagory_box_global_widget.dart';
import 'package:shopping/all_global_widget/recent_product_card_widget.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class HomePageActivity extends StatelessWidget {
  const HomePageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
        appBar: AppBar(
          backgroundColor: MyColor.whiteColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery address",
                    style: mySecondTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        "Salatiga City, Central Java",
                        style: myTextStyle,
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    MyImage.cartIcon,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    MyImage.notificationIcon,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: MyColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 0.0001),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search here ...',
                    border: InputBorder.none,
                    prefixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: SvgPicture.asset(
                        MyImage.searchIcon,
                      ),
                    ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 144,
                    width: 304,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(MyImage.bannerBig),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 144,
                    width: 304,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(MyImage.bannerBig),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Category",
                      style: myTextStyle.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Row(
              children: [
                CategoryWidget(assetImage: MyImage.apparel, title: "Apparel"),
                CategoryWidget(assetImage: MyImage.school, title: "School"),
                CategoryWidget(assetImage: MyImage.sports, title: "Sports"),
                CategoryWidget(
                    assetImage: MyImage.electronics, title: "Electronics",),
                CategoryWidget(assetImage: MyImage.allItem, title: "All"),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Product",
                      style: myTextStyle.copyWith(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 27,
                    width: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColor.whiteColor,
                      boxShadow: const [
                        BoxShadow(blurRadius: 0.0001),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filters",
                          style: mySecondTextStyle,
                        ),
                        SvgPicture.asset(MyImage.filterIcon)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Wrap(
              children: [
                RecentProduct(assetImage: MyImage.monitor, title1: "Monitor LG 22”inc 4K 120Fps", title2: "\$199.99"),
                RecentProduct(assetImage: MyImage.mug, title1: "Aestechic Mug - white variant", title2: "\$19.99"),
                RecentProduct(assetImage: MyImage.airpod1, title1: "Airpod 2nd Generation", title2: "\$99.99"),
                RecentProduct(assetImage: MyImage.earphone2, title1: "High Quality Earphone", title2: "\$49.99"),

              ],
            )
          ],
        )));
  }
}
