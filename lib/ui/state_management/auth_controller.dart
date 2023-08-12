import 'dart:developer';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  String ? token;

  Future<bool> isLoggedIn() async {
    await getToken();
   // log(token.toString());
    return token != null;

  }

  Future<void> saveToken(String userToken) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    token = userToken;
    await preference.setString('shopanbd_token', userToken);
  }

  Future<void> getToken() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    token = preference.getString('shopanbd_token');
  }

  Future<void> clearUserData() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    await preference.clear();

  }
}