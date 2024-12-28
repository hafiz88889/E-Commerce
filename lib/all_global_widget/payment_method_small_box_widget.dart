import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_text_style.dart';

class SmallBoxWidget extends StatelessWidget{
  final String title1;
  final String title2;
  const SmallBoxWidget({super.key,
  required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 10,right: 10),
            child: Text(title1,style: mySecondTextStyle.copyWith(fontSize: 14),)),
       const SizedBox(height: 5,),
        Container(
          height: 50,
          width: 175,
          margin: const EdgeInsets.only(top: 0, left: 10, right: 10,bottom: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: MyColor.whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(blurRadius: 0.0001),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText:title2,
                border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

}