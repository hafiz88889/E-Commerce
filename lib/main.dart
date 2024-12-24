import 'package:flutter/material.dart';
import 'package:shopping/screen_page/home_screen/home_page.dart';
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
