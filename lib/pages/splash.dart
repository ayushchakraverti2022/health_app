import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/pages/home.dart';
import 'package:health_app/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  ////////////////
  late SharedPreferences sf; // = await SharedPreferences.getInstance();
  Future<void> sfi() async {
    sf = await SharedPreferences.getInstance();
      
    Future.delayed(const Duration(seconds: 3), () async {
     

      bool? logged = sf.getBool("logged");

      if (logged == true) {
        Get.off(const Home());
      }else{
        Get.off(const Login());
      } 
    });
  }

//////////////////
  @override
  void initState() {
    super.initState();
    sfi();   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ClipRRect(
            child: Image.asset(
              "images/hp.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    ));
  }
}
