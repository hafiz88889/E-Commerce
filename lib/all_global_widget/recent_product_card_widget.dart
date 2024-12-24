import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_text_style.dart';

class RecentProduct extends StatelessWidget{
  final String assetImage;
  final String title1;
  final String title2;
  const RecentProduct({super.key,
  required this.assetImage,
    required this.title1,
    required this.title2
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height:250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MyColor.whiteColor,
            blurRadius: 1,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(assetImage),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title1,style: myTextStyle.copyWith(fontWeight: FontWeight.w100),
            maxLines: 1,
          ),
          SizedBox(
            height: 8,
          ),
          Text(title2,style: myTextStyle.copyWith(fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add to cart",style: myTextStyle.copyWith(color: MyColor.whiteColor,fontWeight: FontWeight.w100),),
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    backgroundColor: WidgetStateProperty.all(MyColor.buttonColor)
                ),
              ))
        ],
      ),
    );
  }

}