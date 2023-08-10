import 'package:ecommerce_shopanbd/ui/state_management/bottom_navigation_bar_controller.dart';

import '../utills/app_colours.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/product_card.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List'),
        leading: IconButton(
          onPressed: () {
            Get.find<BottomNavigationBarController>().backHome();
          },
            icon: const Icon(Icons.arrow_back, color: greyColor,),
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.75
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ProductCard();
          }),
    );
  }
}
