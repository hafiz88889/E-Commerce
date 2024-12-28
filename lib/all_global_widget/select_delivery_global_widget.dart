import 'package:flutter/material.dart';
import 'package:shopping/utils/my_text_style.dart';

class SelectTheDelivery extends StatelessWidget{
  final String title1;
  final String title2;
  final String title3;
  const SelectTheDelivery({super.key,
  required this.title1,
    required this.title2,
    required this.title3,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 20,right: 20,top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title1,style: myTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title2,style: mySecondTextStyle),
              Text(title3,style: myTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}