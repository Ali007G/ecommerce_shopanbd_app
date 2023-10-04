import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:ecommerce_shopanbd/ui/widgets/catrgory_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_management/bottom_navigation_bar_controller.dart';

// stateless widget- dynamic
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        leading: IconButton(
          onPressed: () {
            //final BottomNavigationBarController navigationBarController =
                Get.find<BottomNavigationBarController>().backHome();
           // navigationBarController.backHome();
            //Get.to(HomeScreen());
          },
          icon: const Icon(Icons.arrow_back_outlined, color: greyColor,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ), itemBuilder: (context, index) {
          return const CategoryCardWidget(name: 'Dummy');
        }),
      ),
    );
  }
}
