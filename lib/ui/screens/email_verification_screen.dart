//import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:ecommerce_shopanbd/ui/utills/styles.dart';
import 'package:flutter/material.dart';

import '../widgets/common_elevated_button.dart';
import '../widgets/common_text_field.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Text('Welcome Back', style: titleTextStyle),
            const SizedBox(height: 4),
            Text('Please Enter Your Email Address', style: subTitleStyle),
            const SizedBox(height: 16),
            CommonTextField(
              controller: TextEditingController(),
              hintText: 'Email Address',
              textInputType: TextInputType.emailAddress,
              validator: (String? value ) {
              },
            ),
            const SizedBox(height: 16),
            CommonElevatedButton(
              title: 'Next',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}



