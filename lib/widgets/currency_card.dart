

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {

  final String name, code,amount;
  final IconData icon;
  final bool isInverted;
  final double offsetX;
  final double offsetY;

  const CurrencyCard({super.key,required this.offsetX,required this.offsetY, required this.name, required this.code, required this.amount, required this.icon, required this.isInverted});



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Transform.translate(
      offset: Offset(offsetX,offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(amount,
                        style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white,
                          fontSize: 19,
                        ),),
                      SizedBox(
                        width: 6,
                      ),
                      Text(code
                        ,style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white.withOpacity(0.8),
                          fontSize: 18,

                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child:  Transform.translate(
                  offset: Offset(8,15),
                  child: Icon(icon,
                    size: 77,
                    color: isInverted ? Colors.black : Colors.white,),
                )
                ,
              )
            ],
          ),
        ),
      ),
    );
  }
}