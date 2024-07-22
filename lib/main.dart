import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';



void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end
                      ,
                      children: [
                        Text('Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text('Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'Transfer', bgColor: Color(0XFFF2B33A), textColor: Colors.black,),
                    Button(text: 'Request', bgColor: Color(0XFF1F2123), textColor: Colors.white,),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Wallets',
                      style: TextStyle(
                          color : Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                      ),),
                    Text('View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),

                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(offsetX: 0,offsetY: 0, name: 'Euro', code: 'EUR', amount: '6 427', icon: Icons.euro_rounded,isInverted: false,),
                CurrencyCard(offsetX: 0,offsetY: -30,name: 'Bitcoin', code: 'BTC', amount: '9 424', icon: Icons.currency_bitcoin,isInverted: true,),
                CurrencyCard(offsetX: 0,offsetY: -50,name: 'Dollar', code: 'USD', amount: '5 434', icon: Icons.attach_money_rounded,isInverted: false,),
                // Transform.translate(
                //   offset: Offset(0,-30),
                //   child: CurrencyCard(name: 'Bitcoin', code: 'BTC', amount: '9 424', icon: Icons.currency_bitcoin,isInverted: true,),
                // ),
                // Transform.translate(
                //   offset: Offset(0,-50),
                //   child: CurrencyCard(name: 'Dollar', code: 'USD', amount: '5 434', icon: Icons.attach_money_rounded,isInverted: false,),
                // ),


              ],
            ),
          ),
        ),
      ),
    );


  }
}

