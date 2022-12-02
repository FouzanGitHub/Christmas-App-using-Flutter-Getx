
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Button extends StatelessWidget {
     final String text;
     final press;

   Button({
     required this.text,
     required this.press
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.5.h,
      width: 40.w,
      child: ElevatedButton(
      onPressed: () {
         press();
       
        },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xfffFA504E),
        shadowColor: Color(0xfffFA504E),
        elevation: 5,
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        
        ),
      ),

      ),
    );
  }
}