import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_image.dart';
import 'package:shopping/utils/my_text_style.dart';

class CategoryWidget extends StatelessWidget{
  final String assetImage;
  final String title;

  const CategoryWidget({super.key,
    required this.assetImage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57,
      height: 61,
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: Column(
        children: [
          Image(image: AssetImage(assetImage)),
          SizedBox(height: 3,),
          Text(title,style: mySecondTextStyle,)
        ],
      ),
    );
  }

}