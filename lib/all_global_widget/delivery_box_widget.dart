import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_text_style.dart';

class DeliveryBoxWidget extends StatelessWidget{
  final String title1;
  const DeliveryBoxWidget({super.key,
  required this.title1,
  });

  @override
  Widget build(BuildContext context) {
   return Container(
     padding: const EdgeInsets.symmetric(horizontal: 10),
     height: 50,
     width: 350,
     decoration: BoxDecoration(
       border: Border.all(color: MyColor.smallTextColor),
       borderRadius: BorderRadius.circular(8),
     ),
     child: TextField(
       decoration: InputDecoration(
         border: InputBorder.none,
         hintText: title1,hintStyle: myTextStyle.copyWith(color: MyColor.smallTextColor),
         suffixIcon: const Icon(Icons.keyboard_arrow_right),
       ),
     ),
   );
  }


}