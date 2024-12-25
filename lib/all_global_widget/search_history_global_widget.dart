import 'package:flutter/material.dart';
import 'package:shopping/utils/my_text_style.dart';

class SearchHistory extends StatelessWidget {
  final String title;
  const SearchHistory({super.key,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.access_time),
        SizedBox(width: 10,),
        Text(title, style: myTextStyle,),
        const Spacer(),
        Icon(Icons.close),
      ],
    );
  }
}

