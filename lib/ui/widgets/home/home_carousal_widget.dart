import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../data/models/home_slider_model.dart';
import '../../utills/app_colours.dart';

class HomeCarousalWidget extends StatelessWidget {
  final HomeSliderModel homeSliderModel;
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  HomeCarousalWidget({Key? key, required this.homeSliderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          //carouselController: _carouselController,
          options: CarouselOptions(
            height: 180,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, _) {
              _currentCarouselIndex.value = index;
            },
            autoPlayInterval: const Duration(seconds: 5),
          ),
          items: homeSliderModel.sliders!.map((i) {
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
                        height: 12,
                        width: 12,
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
    );
  }
}