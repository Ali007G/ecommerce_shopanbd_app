import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart', style: TextStyle(
          color: primaryColor,
        ),),
      ),
    );
  }
}
