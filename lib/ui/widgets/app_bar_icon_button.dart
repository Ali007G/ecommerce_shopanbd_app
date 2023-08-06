import 'package:flutter/material.dart';

import '../utills/app_colours.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({
    Key? key, required this.icondata, required this.onTap,
  }) : super(key: key);

  final IconData icondata;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      splashColor: primaryColor.withOpacity(0.6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CircleAvatar(
          backgroundColor: Colors.white30,
          radius: 15,
          child: Icon(icondata,size: 18,),
        ),
      ),
    );
  }
}