//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
//import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
//import 'package:ecommerce_shopanbd/ui/utills/styles.dart';
//import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import '../widgets/catrgory_card_widget.dart';
import '../widgets/home/app_bar_icon_button.dart';
import '../widgets/home/home_carousal_widget.dart';
import '../widgets/home/remarks_title_widget.dart';
import '../widgets/home/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //CarouselController _carouselController = CarouselController();
  //ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/logo_nav.png'),
            const Spacer(),
            AppBarIconButton(
              icondata: Icons.person,
              onTap: () {},
            ),
            AppBarIconButton(
              icondata: Icons.call,
              onTap: () {},
            ),
            AppBarIconButton(
              icondata: Icons.notifications_none,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchTextField(),
              const SizedBox(
                height: 16,
              ),
              HomeCarousalWidget(),
              const SizedBox(
                height: 16,
              ),
              RemarksTitleWidget(
                remarksName: 'Categories',
                onTapSeeAll: (){},
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CategoryCardWidget(
                      name: 'Computer',
                    ),
                    CategoryCardWidget(
                      name: 'Electronics',
                    ),
                    CategoryCardWidget(
                      name: 'Clothes',
                    ),
                    CategoryCardWidget(
                      name: 'Computer',
                    ),
                    CategoryCardWidget(
                      name: 'Computer',
                    ),
                    CategoryCardWidget(
                      name: 'Computer',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              RemarksTitleWidget(
                remarksName: 'Popular',
                onTapSeeAll: (){},
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 140,
                child: Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      Image.asset('assets/images/dummy_shoe.jpg',
                        width: 132, height: 60,
                      fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                          Text('Nike Casual Shoe A3456',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: greyColor,
                          ),),
                        Row(
                          children: [
                          Text('\$340', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: primaryColor,
                          ),
                          ),
                          ],
                        ),
                      const SizedBox(
                          width: 4, ,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.star, color: Colors.amber,
                            size: 14,),
                          Text('4.5')
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite_border),
                        ),
                      )
                    ],
                  ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
      ],
    ),
    ),
    ),
    );
  }
}




