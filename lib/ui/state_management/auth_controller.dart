
import 'dart:convert';

import 'package:ecommerce_shopanbd/data/models/profile_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static String ? _token;
  static ProfileData ? _profileData;

  static String ? get token => _token;

  static ProfileData ? get profile => _profileData;

  Future<bool> isLoggedIn() async {
    await getToken();
    await getProfileData();
   // log(token.toString());
    return _token != null;

  }

  Future<void> saveToken(String userToken) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    _token = userToken;
    await preference.setString('shopanbd_token', userToken);
  }

  Future<void> saveProfileData(ProfileData profileData) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    _profileData = profile;
    await preference.setString('user_profile', profile!.toJson().toString());
    //await preference.setString('user_profile', profile.toJson().toString());
  }

  Future<void> getToken() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    _token = preference.getString('shopanbd_token');
  }

    Future<void> getProfileData() async {
      SharedPreferences preference = await SharedPreferences.getInstance();
      _profileData = ProfileData.fromJson(
          jsonDecode(preference.getString('user_profile') ?? '{}'),);
    }

  Future<void> clearUserData() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    await preference.clear();

  }
}