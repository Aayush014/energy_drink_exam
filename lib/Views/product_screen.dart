import 'package:energy_drink_exam/Utils/global.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height / 10,
            ),
            Container(
              height: height / 2,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 3,
                  spreadRadius: 4
                )]
              ),
            ),
            SizedBox(
              height: height / 20,
            ),
            Text(product[index]['name']),
          ],
        ),
      ),
    );
  }
}
int index=0;