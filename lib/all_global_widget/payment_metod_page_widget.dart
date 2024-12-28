import 'package:flutter/material.dart';
import 'package:shopping/utils/my_color.dart';
import 'package:shopping/utils/my_text_style.dart';

class PaymentMethodPageGlobalWidget extends StatefulWidget{
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  const PaymentMethodPageGlobalWidget({super.key,
  required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  State<PaymentMethodPageGlobalWidget> createState() => _PaymentMethodPageGlobalWidgetState();
}

class _PaymentMethodPageGlobalWidgetState extends State<PaymentMethodPageGlobalWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 10,right: 10),
            child: Text(widget.title1,style: mySecondTextStyle.copyWith(fontSize: 14),)),
       const SizedBox(height: 5,),
        Container(
          height: 50,
          width: 350,
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
                hintText: widget.title2,
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image(image: AssetImage(widget.title3),height: 20,width: 20,),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image(image: AssetImage(widget.title4),height: 20,width: 20,),
                )
            ),
          ),
        ),
      ],
    );
  }
}