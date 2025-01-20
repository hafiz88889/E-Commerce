import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/all_global_widget/search_history_global_widget.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.whiteColor,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 250,
              margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
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
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: SvgPicture.asset(
                        MyImage.searchIcon,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SvgPicture.asset(MyImage.cartIcon)
          ],
        ) ,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last Search",style: myTextStyle.copyWith(fontSize: 16),),
                Text("Clear all",style: myTextStyle.copyWith(fontSize: 12,color: MyColor.redColor),),
              ],
            ),
          ),
          Container(
            height: 179,
            width: 342,
            margin: const EdgeInsets.all(10),
            child: const Column(
              children: [
                SearchHistory(title: "Iphone 12 pro max"),
                SizedBox(height: 8,),
                SearchHistory(title: "Camera fujifilm"),
                SizedBox(height: 8,),
                SearchHistory(title: "Tripod Mini"),
                SizedBox(height: 8,),
                SearchHistory(title: "Bluetooth speaker"),
                SizedBox(height: 8,),
                SearchHistory(title: "Drawing pad"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
