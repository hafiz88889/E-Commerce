import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_text_style.dart';

class CartPageWidget extends StatelessWidget{
  final String assetImage;
  final String title1;
  final String title2;
  final String title3;
  const CartPageWidget({super.key,
  required this.assetImage,
    required this.title1,
  required this.title2,
    required this.title3,
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
         SizedBox(width: 15,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(title1,style: myTextStyle,),
             Text(title2,style: mySecondTextStyle,),
             Row(
               children: [
                 Text(title3,style: myTextStyle.copyWith(fontSize: 18),),
                 SizedBox(width: 30,),
                 Container(
                   margin:const EdgeInsets.all(5),
                   height: 45,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       // Decrement Button
                       IconButton(
                         onPressed: (){},
                         icon:const Icon(Icons.remove),
                         color: MyColor.textColor,
                         iconSize: 25,
                       ),
                       Text(
                         '1',
                         style: myTextStyle,
                       ),
                       // Increment Button
                       IconButton(
                         onPressed: (){},
                         icon:const Icon(Icons.add),
                         color: MyColor.buttonColor,
                         iconSize: 25,
                       ),
                       const Icon(Icons.delete)
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),

       ],
     ),
   );
  }

}