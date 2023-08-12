
import 'package:ecommerce_shopanbd/ui/screens/bottom_nav_bar_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/email_verification_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_management/auth_controller.dart';
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
    Future.delayed(const Duration(seconds: 1)).then((value) async {
      final bool loginState = await Get.find<AuthController>().isLoggedIn();
      //log(loginState.toString());
      if (loginState) {
        Get.off(const BottomNavBarScreen());
      } else {
        Get.off(const EmailVerificationScreen());
      }
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
            ),
          ),
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
