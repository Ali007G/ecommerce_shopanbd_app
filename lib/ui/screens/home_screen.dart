import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
           // Image.asset('assets/images/nap.jpg'),
            const Spacer(),
            AppBarIconButton(
              icondata: Icons.person,
              onTap: (){},
            ),
            AppBarIconButton(
              icondata: Icons.call,
              onTap: (){},
            ),
            AppBarIconButton(
              icondata: Icons.notifications_none,
              onTap: (){},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}

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
      splashColor: primaryColor.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CircleAvatar(
          backgroundColor: greyColor,
          radius: 15,
          child: Icon(icondata,size: 18,),
        ),
      ),
    );
  }
}
