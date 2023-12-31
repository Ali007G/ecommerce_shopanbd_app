import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:ecommerce_shopanbd/ui/state_management/auth_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_management/user_profile_controller.dart';
import 'package:get/get.dart';

class UserAuthController extends GetxController {
  bool _emailVerificationInProgress = false;
  bool _otpVerificationInProgress = false;

  bool get emailVerificationInProgress => _emailVerificationInProgress;
  bool get otpVerificationInProgress => _otpVerificationInProgress;
  
  Future<bool>emailVerification(String email) async {
    _emailVerificationInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/UserLogin/$email');
    _emailVerificationInProgress = false;

    if(response.isSuccess) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  Future<bool>otpVerification(String email, String otp) async {
    _otpVerificationInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/VerifyLogin/$email/$otp');
     // Get.find<UserProfileController>().getProfileData();
    _otpVerificationInProgress = false;
    if(response.isSuccess) {
     await Get.find<AuthController>().saveToken(response.returnData['data']);
     Get.find<UserProfileController>().getProfileData();
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
  
}