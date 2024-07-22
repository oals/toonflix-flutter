

import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Color bgColor;
  final Color textColor;


  Button({super.key, required this.text, required this.bgColor, required this.textColor});


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(50)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 15, horizontal: 50
        ),
        child: Text(text
          ,style: TextStyle(
            color: textColor,
            fontSize: 17,
          ),),
      ),
    );
  }


}