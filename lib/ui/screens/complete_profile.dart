import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:ecommerce_shopanbd/ui/widgets/common_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Image.asset('assets/images/nap.jpg', width: 150,),
              const SizedBox(
                height: 16,
              ),
              const Text('Complete Profile', style: TextStyle(
                fontSize: 20,
                color: greyColor,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Get Started with us with your details',
                style: TextStyle(
                  fontSize: 18,
                  color: greyColor,
              ),
              ),
              const SizedBox(
                height: 16,
              ),
              CommonTextField(
                controller: TextEditingController(),
                validator: (String? value) {},
                textInputType: TextInputType.name,
                hintText: 'First Name',
              ),
              const SizedBox(
                height: 16,
              ),
              CommonTextField(
                controller: TextEditingController(),
                validator: (String? value) {},
                textInputType: TextInputType.name,
                hintText: 'Last Name',
              ),
              const SizedBox(
                height: 16,
              ),
              CommonTextField(
                controller: TextEditingController(),
                validator: (String? value) {},
                textInputType: TextInputType.number,
                hintText: 'Mobile',
              ),
              const SizedBox(
                height: 16,
              ),
              CommonTextField(
                controller: TextEditingController(),
                validator: (String? value) {},
                textInputType: TextInputType.name,
                hintText: 'City',
              ),
              const SizedBox(
                height: 16,
              ),
              CommonTextField(
                controller: TextEditingController(),
                validator: (String? value) {},
                textInputType: TextInputType.name,
                hintText: 'Shipping Address',
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Complete', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
