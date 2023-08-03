import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    Key? key, required this.title, required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap; //voidcallback is limited edition


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(

        ),
        onPressed: onTap,
        child: Text(title, style: const TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.6
        ),),),
    );
  }
}