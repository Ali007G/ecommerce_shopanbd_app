import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: Image.asset(
              'assets/images/shopan.png',
              width: 120,
            ),
          )),

          Column(
            children: const [
              CircularProgressIndicator(),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Version 1.0'),
              )
            ],
          )
        ],
      ),
    );
  }
}
