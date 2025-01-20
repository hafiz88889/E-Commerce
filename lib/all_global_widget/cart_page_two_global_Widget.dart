import 'package:flutter/material.dart';
import 'package:shopping/utils/my_text_style.dart';
class CardSecondPage extends StatelessWidget{
  final String assetImage;
  final String title5;
  final String title6;
  final String title7;
  final String title8;
  const CardSecondPage({super.key,
    required this.assetImage,
    required this.title5,
    required this.title6,
    required this.title7,
    required this.title8,
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: AssetImage(assetImage),fit:BoxFit.cover )
            ),
          ),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title5,style: myTextStyle,),
              Text(title6,style: mySecondTextStyle,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title7,style: myTextStyle.copyWith(fontSize: 18),),
                 const  SizedBox(width: 120,),
                  Text(title8,style: mySecondTextStyle.copyWith(fontSize: 12),),
                  const  SizedBox(width: 15,),
                ],
              ),
            ],
          ),

        ],
      ),

    );
  }

}