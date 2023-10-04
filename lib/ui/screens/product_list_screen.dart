import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

// stateless widget
class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        leading: const BackButton(
          color: greyColor,
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.75
          ),
          itemCount: 50,
          itemBuilder: (context, index) {
            return const ProductCard();
          }),
    );
  }
}
