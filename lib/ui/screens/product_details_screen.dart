
import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:ecommerce_shopanbd/ui/utills/styles.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/product_image_carousal.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_stepper.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  List<Color> colors = const [
    Color(0xFF000000),
    Color(0xFFB31818),
    Color(0xFF2A39AF),
    Color(0xFF53B318),
    Color(0xFF34C4C4),
  ];
  List<String> sizes = const [
    'S',
    'L',
    'XL',
    'XXl',
    'XXXL'
  ];

  Color _selectedCColor = Color(0xFF000000);
  String _selectedSize = 'L';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: const BackButton(
          color: greyColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImageCarousal(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adidas Casual Shoe s463 Brand New',
                          style: titleTextStyle.copyWith(
                            fontSize: 18,
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              TextButton(
                                onPressed: (){},
                                child: const Text(
                                  'Reviews',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    height: 1.2,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const ProductStepper(),
                    ],
                ),
                const SizedBox(height: 16,),
                const Text('Color', style: TextStyle(
                  fontSize: 20,
                  color: greyColor,
                  fontWeight: FontWeight.w600,
                ),),
                    const SizedBox(height: 16,),
                    Row(
                        children: colors.map((color) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            if(_selectedCColor != color) {
                              _selectedCColor = color;
                              if (mounted) {
                                setState(() {

                                });
                              }
                            }
                          },
                          child: CircleAvatar(
                            backgroundColor: color,
                            radius: 15,
                            child: Visibility(
                                visible: color == _selectedCColor,
                                child: Icon(Icons.check, color: Colors.white,)),
                          ),
                        ),
                      );
                    }).toList()),

                const SizedBox(height: 16,),
                const Text('Size', style: TextStyle(
                  fontSize: 20,
                  color: greyColor,
                  fontWeight: FontWeight.w600,
                ),),
                const SizedBox(height: 16,),
                Row(
                    children: sizes.map((size) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            if(_selectedSize != size) {
                              _selectedSize = size;
                              if (mounted) {
                                setState(() {

                                });
                              }
                            }
                          },
                          child: CircleAvatar(
                            radius: 15,
                            child: Visibility(
                                visible: size == _selectedSize,
                                child: Icon(Icons.check, color: Colors.white,)),
                          ),
                        ),
                      );
                    }).toList())
              ],
            ),
          ),
        ],
      ),
    );
  }
}



