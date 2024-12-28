import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping/all_global_widget/catagory_box_global_widget.dart';
import 'package:shopping/all_global_widget/recent_product_card_widget.dart';
import 'package:shopping/screen_page/home_screen/cart_page.dart';
import 'package:shopping/screen_page/home_screen/details_page.dart';
import 'package:shopping/screen_page/home_screen/product_page.dart';
import 'package:shopping/screen_page/home_screen/search_page.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class HomePageActivity extends StatefulWidget {
  const HomePageActivity({super.key});

  @override
  State<HomePageActivity> createState() => _HomePageActivityState();
}
class _HomePageActivityState extends State<HomePageActivity> {
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
                      const Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
                    },
                    child: SvgPicture.asset(
                      MyImage.cartIcon,
                    ),
                  ),
                  const SizedBox(
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
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Image(image: AssetImage(MyImage.homeIcon),height: 24,width: 24,),label: "Home"),
              BottomNavigationBarItem(icon: Image(image: AssetImage(MyImage.loveIcon),height: 24,width: 24,),label: "Wishlist"),
              BottomNavigationBarItem(icon: Image(image: AssetImage(MyImage.historyIcon),height: 24,width: 24,),label: "History"),
              BottomNavigationBarItem(icon: Image(image: AssetImage(MyImage.profileIcon),height: 24,width: 24,),label: "Profile"),


            ]
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 40,
              width: 350,
              margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: MyColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset(
                          MyImage.searchIcon,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
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
              margin: const EdgeInsets.all(10),
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
                  assetImage: MyImage.electronics,
                  title: "Electronic",
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductPage()));
                    },
                    child: CategoryWidget(
                        assetImage: MyImage.allItem, title: "All")),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Product",
                      style: myTextStyle.copyWith(fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductPage()));
                    },
                    child: Container(
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
                    ),
                  )
                ],
              ),
            ),
            Wrap(
              children: [
                RecentProduct(
                    assetImage: MyImage.monitor,
                    title1: "Monitor LG 22”inc 4K 120Fps",
                    title2: "\$199.99"),
                RecentProduct(
                    assetImage: MyImage.mug,
                    title1: "Aestechic Mug - white variant",
                    title2: "\$19.99"),
                RecentProduct(
                    assetImage: MyImage.airpod1,
                    title1: "Airpod 2nd Generation",
                    title2: "\$99.99"),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsPage()));
                    },
                    child: RecentProduct(
                        assetImage: MyImage.earphone2,
                        title1: "High Quality Earphone",
                        title2: "\$49.99")),
              ],
            )
          ],
        )
        )
    );
  }
}
