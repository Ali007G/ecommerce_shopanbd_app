import 'package:ecommerce_shopanbd/ui/screens/bottom_nav_bar_screen.dart';
//import 'package:ecommerce_shopanbd/ui/screens/email_verification_screen.dart';
//import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utills/app_colours.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.off(const BottomNavBarScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: Image.asset(
              'assets/images/shopan.png',
              width: 120,
            ),
          )),
          Column(
            children: const [
              CircularProgressIndicator(
                color: primaryColor,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Version 1.0',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 12,
                    letterSpacing: 0.6,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
