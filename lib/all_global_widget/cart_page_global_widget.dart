import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_text_style.dart';

class CartPageWidget extends StatefulWidget{
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
  State<CartPageWidget> createState() => _CartPageWidgetState();
}
bool _value=false;
class _CartPageWidgetState extends State<CartPageWidget> {
  @override
  Widget build(BuildContext context) {
   return  Row(
     children: [
       Container(
         margin:const EdgeInsets.all(10),
         child: Row(
           children: [
             Checkbox(
                 //fillColor: WidgetStateProperty.all(MyColor.buttonColor),
               activeColor: MyColor.buttonColor,
                 value: _value, onChanged: (value){
                 setState(() {
                   _value=value!;
                 });
               }),
             Container(
               height: 88,
               width: 88,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   image: DecorationImage(image: AssetImage(widget.assetImage),fit:BoxFit.cover )
               ),
             ),
             const SizedBox(width: 15,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(widget.title1,style: myTextStyle,),
                 Text(widget.title2,style: mySecondTextStyle,),
                 Row(
                   children: [
                     Text(widget.title3,style: myTextStyle.copyWith(fontSize: 18),),
                    const  SizedBox(width: 15,),
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
                             color: MyColor.smallTextColor,
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
                             color: MyColor.smallTextColor,
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

       ),
     ],
   );
  }
}
