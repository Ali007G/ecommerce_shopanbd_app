import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserAuthController extends GetxController {
  bool _emailVerificationInProgress = false;

  bool get emailVerificationInProgress => _emailVerificationInProgress;
  
  Future<bool>emailVerification(String email) async {
    _emailVerificationInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/UserLogin/$email');
    if(response.isSuccess) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
  
}