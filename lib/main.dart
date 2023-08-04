//ecommerce app
// 1. UI + Functional 2. State management 3. API integration
///refractor: ctrl+alt+L

//import 'package:ecommerce_shopanbd/ui/screens/splash_screen.dart';
//this section import all the app that's why we comment ecommerce_shopanbd
import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/screens/email_verification_screen.dart';
import 'ui/screens/splash_screen.dart'; // relative path

void main() {
  runApp(const ShopanBD());
}

class ShopanBD extends StatelessWidget {
  const ShopanBD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
     // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(

            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 0.6,
            )
        ),
      ),
    ),

      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(

              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6,
              )
          ),
        ),
      ),

    );
  }
}
