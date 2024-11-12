

import 'package:flutter/material.dart';
import 'package:health_app/colors/color.dart';

class Fonts{

  static TextStyle boldTextFeildStyle(){
    return  TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins');
  }

    static TextStyle HeadlineTextFeildStyle(){
    return  const TextStyle(
                  color:  Color.fromARGB(255, 126, 227, 233),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins');
  }
   static TextStyle LinkPageStyle(){
    return  TextStyle(
                  color: CustomColor.White(),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins');
  }

      static TextStyle LightTextFeildStyle(){
    return  TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }
      static TextStyle PostLightTextFeildStyle(){
    return  TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }
    static TextStyle WhiteTextFeildStyle(){
    return  TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }
    static TextStyle RejectRequest(){
    return  TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }

        static TextStyle semiBoldTextFeildStyle(){
    return  TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }
    static TextStyle createPostTextFeildStyle(){
    return  TextStyle(
                  color: Colors.black54,
                  fontSize: 17.0,
                  
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }
        static TextStyle PostHeadTextStyle(){
    return  TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }
  static TextStyle requestTabStyle(){
    return  TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins');
  }

   static TextStyle profilefont(){
    return  TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins');
  }
  static TextStyle profileFieldfont(){
    return  TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins');
  }
   static TextStyle profileEmailFieldfont(){
    return  TextStyle(
                  color: CustomColor.themeColor(),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins');
  }
}