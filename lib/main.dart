//ecommerce app
// 1. UI + Functional 2. State management 3. API integration
///refractor: ctrl+alt+L

//import 'package:ecommerce_shopanbd/ui/screens/splash_screen.dart';
//this section import all the app that's why we comment ecommerce_shopanbd
import 'package:ecommerce_shopanbd/ui/state_management/bottom_navigation_bar_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_management/home_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_management/user_auth_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_management/user_profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/screens/splash_screen.dart';
import 'ui/state_management/auth_controller.dart'; // relative path

void main() {
  runApp(const ShopanBD());
}

class ShopanBD extends StatelessWidget {
  const ShopanBD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetXBindings(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
     // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
              elevation: 1,
        ),
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
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 1,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
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

class GetXBindings extends Bindings {
  @override
  void dependencies() {
   Get.put(BottomNavigationBarController());
   Get.put(UserAuthController());
   Get.put(AuthController());
   Get.put(UserProfileController());
   Get.put(HomeController());
  }

}