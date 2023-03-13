import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_news/config/palette.dart';

class LoginSignupScreen extends StatefulWidget{
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}


class _LoginSignupScreenState extends State<LoginSignupScreen>{
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/zzal.png'),
                    fit: BoxFit.fill),
              ),
              child: Container(
                child: Column(
                  children: [
                  RichText(
                      text: TextSpan(
                        text: 'Welcome',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 25,
                        color: Colors.white
                    ),
                        children: [
                          TextSpan(
                          text: 'to Yummy chat!',
                          style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white,
                            fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                    Text(
                      'signup to continue',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.white
                      ),
                    )
                ],
              ),
            ),
          ),
          ),
          Positioned(
            top:180,
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 280.0,
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('LOGIN',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Palette.textColor1
                          ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3),
                        height:2,
                        width: 55,
                        color: Colors.orange,
                      )
                        ],
                      ),
                      Column(
                        children: [
                          Text('SIGNUP',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Palette.textColor1
                            ),

                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            height:2,
                            width: 55,
                            color: Colors.orange,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              ),
            ),
      ],
    ),
    );
  }
}