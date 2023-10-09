import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utills/app_colours.dart';

class ProductImageCarousal extends StatelessWidget {    // stateless widget
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  ProductImageCarousal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          //carouselController: _carouselController,
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, _) {
              _currentCarouselIndex.value = index;
            },
            autoPlayInterval: const Duration(seconds: 5),
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                   // borderRadius: BorderRadius.circular(8),
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
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ValueListenableBuilder(
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
                                color: currentValue == i ? primaryColor : Colors.white,
                              //  border: Border.all(color: greyColor.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                      ],
                    );
                  }
              ),
            ),
          ),
        ),
      ],
    );
  }
}
