import 'package:christmas_app_/CardPage.dart';
import 'package:christmas_app_/DataController.dart';
import 'package:christmas_app_/Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with TickerProviderStateMixin {
 ModelDataController dataController = Get.put(ModelDataController());
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       leading: Padding(
         padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 20),
        
         child: Icon(Icons.menu_sharp,
         color: Colors.black,
         ),
       ),
       actions: [
        Padding(
          padding: EdgeInsets.only (right: MediaQuery.of(context).size.width / 20),
          child: Icon(Icons.person,
          color: Colors.black,
          ),
        )
       ],
       elevation: 0,
       backgroundColor: Colors.transparent,
      ),
    body:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
            
    
            Padding(
              padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 15,
              top: MediaQuery.of(context).size.width / 20
              ),
             
              child: TextFile(
    
                weight: FontWeight.bold, size: 26.sp, text: 'Feel The Magic Of Christmas',
    
                
    
              ),
            ),
    
            
    
           
    
           SizedBox(
            height: 3.h,
           ),
    
          Padding(
              padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 15,
              right: MediaQuery.of(context).size.width / 20
              ),
            
            child: Container(
    
              height: 5.5.h,
              
              
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 1,
                  spreadRadius:2 ,
                  offset: Offset(0, 3)
                )
              ]
             ),
              child: TabBar(
    
                controller: _tabcontroller,
    
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                 
                  color: Color(0xfff7AC2FE)
                ),
                isScrollable: true,
    
                tabs: [
    
                 Padding(
                  padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 40),
                 
                   child: Text('Colleagues'),
                 ),
                
                
    
                Padding(
                  padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40
              ),
                  child: Text('My Card'),
                ),
               
    
                Padding(
                 padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40
              ),
                
                  child: Text('My Ward'),
                ),
    
    
    
    
    
              ]),
    
            ),
          ),
    SizedBox(
      height: 1.2.h,
    ),
          Expanded(
            child: Container(
         
            
              
              child: TabBarView(
              
                controller: _tabcontroller,
              
                children: [
              
                
                Padding(
                 padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40
              ),
                 
                  child: CardPage(),
                ),
                Padding(
                padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40
              ),
                 
                  child: CardPage(),
                ),
                Padding(
                 padding: EdgeInsets.only (left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40
              ),
             
                  child: CardPage(),
                )
             
              
                  
              
               
             
                  
              
             
              
              ]),
              
            ),
          )
    
          ],
    
        ),
      
    );
  }
}