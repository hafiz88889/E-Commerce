import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/recent_product_card_widget.dart';
import 'package:shopping/screen_page/home_screen/cart_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 250,
             margin: const EdgeInsets.only(top: 15, left: 10, right: 10,bottom: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColor.whiteColor,
                boxShadow: const [
                  BoxShadow(blurRadius: 0.0001),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Earphone',
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

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
                },
                child: SvgPicture.asset(MyImage.cartIcon))
          ],
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10,top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search result for “Earphone”",
                      style: myTextStyle.copyWith(fontWeight: FontWeight.bold)),
                  Container(
                    padding: const EdgeInsets.all(5),
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
                RecentProduct(assetImage: MyImage.earphoneBig, title1: "Earphones for monitor", title2: "\$199.99"),
                RecentProduct(assetImage: MyImage.wiredEarphone, title1: "Monitor LG 22”inc 4K 120Fps", title2: "\$199.99"),
                RecentProduct(assetImage: MyImage.airpod1, title1: "Earphones for monitor", title2: "\$199.99"),
                RecentProduct(assetImage: MyImage.airpod2, title1: "Monitor LG 22”inc 4K 120Fps", title2: "\$199.99"),
                RecentProduct(assetImage: MyImage.earphone2, title1: "Earphones for monitor", title2: "\$199.99"),
                RecentProduct(assetImage: MyImage.earphone3, title1: "Monitor LG 22”inc 4K 120Fps", title2: "\$199.99"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
