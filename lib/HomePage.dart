import 'dart:ui';


import 'package:christmas_app_/Button.dart';
import 'package:christmas_app_/Text.dart';
import 'package:christmas_app_/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Stack(
         children: [
            Container(
                
            width: 200.w,
             color: Color(0xfff7AC2FE),
             
             
          
            ),
            Positioned(
              top: MediaQuery.of(context).size.width/1.02,
              //top: 50.h,
            
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                height: 200.h,
                width: 100.w,
                color: Colors.white,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(
                      height:17.h,
                     ),
                     TextFile(weight: FontWeight.bold, size: 30.sp, 
                text: 'Secret Santa',),
                SizedBox(
                  height: 2.h,
                ),
                  Padding(
                   padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 4.2,
                   right: MediaQuery.of(context).size.width / 5
              ),
                 
                    child: TextFile(weight: FontWeight.w300, size: 12.sp, 
                text: 'Christmas is the season of light; make your houses bright!'),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                
                Button(text: 'Let\'s go',press: (){
                  Get.to(WelcomePage());
                }), 
                   
                   ],
                 ),
                 
                ),
              ),
            ),
            
            Lottie.asset('Assets/Stars.json'),
          Padding(
             padding: EdgeInsets.only (top: MediaQuery.of(context).size.width / 4),
       
            child: Lottie.asset('Assets/Santa.json'),
          ),
          Lottie.asset('Assets/Cloud.json'), 
          Padding(
           padding: EdgeInsets.only (top: MediaQuery.of(context).size.width / 1.2),
      
            child: Lottie.asset('Assets/Gift santa.json'),
          )
         ],
         ),
    );
  }
}