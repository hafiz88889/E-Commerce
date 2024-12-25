import 'package:flutter/material.dart';
import 'package:shopping/screen_page/home_screen/cart_page.dart';
import 'package:shopping/screen_page/home_screen/home_page.dart';
import 'package:shopping/screen_page/home_screen/product_page.dart';
import 'package:shopping/screen_page/home_screen/search_page.dart';
import 'screen_page/home_screen/details_page.dart';
import 'utils/my_color.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePageActivity(),
    );
  }

}
