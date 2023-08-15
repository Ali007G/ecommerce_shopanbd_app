import 'package:ecommerce_shopanbd/ui/screens/cart_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/category_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/wish_list_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_management/home_controller.dart';
import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_management/bottom_navigation_bar_controller.dart';

// statefull to stateless
class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  // final BottomNavigationBarController _navigationBarController =
  // Get.put(BottomNavigationBarController());
  final List<Widget> _screens =[ const
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishListScreen(),
  ];

  @override
  void initState() {
    super.initState();
    Get.find<HomeController>().getHomeSlider();
  }

  //int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigationBarController>(
        builder: (controller) {
          print(controller.selectedIndex);
          return _screens[controller.selectedIndex];
        }
      ),
      bottomNavigationBar: GetBuilder<BottomNavigationBarController>(
        builder: (controller) {
          return BottomNavigationBar(
            onTap: (value){
              controller.changeIndex(value);
            },
            elevation: 5,
            selectedItemColor: primaryColor,
            unselectedItemColor: greyColor,
            currentIndex: controller.selectedIndex,
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(
              color: greyColor,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'Wishlist'
              ),
            ],
          );
        }
      ),
    );
  }
}
