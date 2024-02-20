import 'package:energy_drink_exam/Views/cart_screen.dart';
import 'package:energy_drink_exam/Views/home_screen.dart';
import 'package:energy_drink_exam/Views/product_screen.dart';
import 'package:energy_drink_exam/Views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const HomeScreen(),
        'pro': (context) => const ProductScreen(),
        'cart': (context) => const CartScreen(),
      },
    );
  }
}

