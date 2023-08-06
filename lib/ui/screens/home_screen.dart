import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //CarouselController _carouselController = CarouselController();
  ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

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
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {},
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                fillColor: softGreyColor.withOpacity(0.2),
                filled: true,
                hintText: 'Search',
                prefix: Icon(
                  Icons.search,
                  color: softGreyColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CarouselSlider(
              //carouselController: _carouselController,
              options: CarouselOptions(
                height: 180,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, _) {
                  _currentCarouselIndex.value = index;
                },
                autoPlayInterval: Duration(seconds: 5),
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'text $i',
                          style: const TextStyle(fontSize: 16.0),
                        ),);
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 4,
            ),
            ValueListenableBuilder(
              valueListenable: _currentCarouselIndex,
              builder: (context, currentValue, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0; i<5 ; i++)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        // child: CircleAvatar(
                        //   radius: 5,
                        // ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: currentValue == i ? primaryColor : null,
                            border: Border.all(color: greyColor.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                  ],
                );
              }
            ),


          ],
        ),
      ),
    );
  }
}
