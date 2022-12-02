// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:christmas_app_/DataController.dart';
import 'package:christmas_app_/Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class CardPage extends StatefulWidget {
 

   const CardPage({super.key, 
      

   });

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
   ModelDataController dataController = Get.put(ModelDataController());
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<ModelDataController>(builder: (controller){
         return ListView.builder(
        itemCount: dataController.modeldata.length,
        itemBuilder: (_,i){
          var currentvalue = dataController.modeldata[i];
          return  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
    
        child: 
        Stack(children: [
        Padding(
            padding: const EdgeInsets.only(top:35,left:20,right: 20),
            child: Container(
            padding: EdgeInsets.all(15),
             height: 18.h,
             width: 100.w,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25),
             color: Colors.white,
             boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0,3)
              )
             ]
             ),
        child: Row(
             children: [
              Container(
               
                height: 11.h,
                width: 11.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
               
                image: DecorationImage(
               image: AssetImage(currentvalue.Img,
                
               ),
                fit: BoxFit.cover
                ),
               
                ),
           

              ),
               
              
             
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 
                 Padding(
                   padding: const EdgeInsets.only(left:15,top:10),
                   child: TextFile(text: currentvalue.Name, size: 14.sp, weight: FontWeight.normal),
                 ),
                 SizedBox(
                  height: 0.4.h,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:15),
                   child: TextFile(text: currentvalue.Title, size: 10.sp, weight: FontWeight.w300),
                 ),
                 SizedBox(
                  height: 1.h,
                 ),
                 SizedBox(
                   width: 50.w,
                   child: Padding(
                     padding: const EdgeInsets.only(left:15),
                     child: TextFile(
                     
                     text: currentvalue.Detail, 
                     size: 10.sp, weight: FontWeight.normal),
                   ),
                 ),
               ],
              
             ),
               
             ],
        ), 
        
            ),
        ),
        Positioned(
        right: MediaQuery.of(context).size.width/40,
        bottom: MediaQuery.of(context).size.width/5,
        //bottom:90,right: 4,
         child: Lottie.asset('Assets/Gift.json',
         height: 10.h,
         width: 15.w
         )
      
       ),
        ],
       ),
      
      ),
          );
        }
        
        );
      }
      ),
      
     
    );
  }
}