import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget{
  final Color buttonColor;

  const ColorButton({super.key,
  required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 41,
      width: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: buttonColor,
      ),
    );
  }

}