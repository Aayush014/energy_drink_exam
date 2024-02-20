import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed('home');
        },
        child: Container(
            height: height,
            width: width,
            child: Image.asset('Assets/img/splashScreen.png', fit: BoxFit.none)),
      ),
    );
  }
}
