import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_management/user_auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utills/app_colours.dart';
import '../utills/styles.dart';
//import '../widgets/common_elevated_button.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String email;

  const OTPVerificationScreen({Key? key, required this.email})
      : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final TextEditingController _otpETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserAuthController>(builder: (userAuthController) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/shopan.png',
                height: 90,
                width: 90,
              ),
              const SizedBox(height: 16),
              Text('Enter OTP Code', style: titleTextStyle),
              const SizedBox(height: 4),
              Text('A 4 digit OTP has been sent', style: subTitleStyle),
              const SizedBox(height: 16),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                controller: _otpETController,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 45,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.green,
                  activeColor: primaryColor,
                  inactiveFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                // backgroundColor: Colors.blue.shade50,
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {},
                appContext: context,
              ),
              const SizedBox(height: 16),
              userAuthController.otpVerificationInProgress
                  ? CircularProgressIndicator()
                  : SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final bool response =
                              await userAuthController.otpVerification(
                                  widget.email, _otpETController.text);
                          if (response) {
                            Get.offAll(const HomeScreen());
                          } else {
                            Get.showSnackbar(
                              const GetSnackBar(
                                title: 'OTP verification failed',
                                message:
                                    'Check your OTP once again before enter it',
                              ),
                            );
                          }
                        },
                        child: const Text('Next'),
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color: greyColor,
                  ),
                  text: 'this code will expire in ',
                  children: [
                    TextSpan(
                      text: '120s',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyle(
                    color: greyColor.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
