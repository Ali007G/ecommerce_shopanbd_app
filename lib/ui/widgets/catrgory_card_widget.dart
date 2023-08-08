import 'package:flutter/material.dart';

import '../utills/app_colours.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key, required this.name,
  }) : super(key: key);

  final String name;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8)
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.computer, size: 30, color: primaryColor,),
            ),
          ),
          const SizedBox(height: 8),
          Text(name, textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: primaryColor,
                letterSpacing: 0.6,
                fontSize: 14
            ),),
        ],
      ),
    );
  }
}
