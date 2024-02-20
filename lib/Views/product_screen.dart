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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 3,
                          spreadRadius: 4)
                    ]),
                child: Image.asset('Assets/img/cool_berry.png'),
              ),
              SizedBox(
                height: height / 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '   Cool Berry',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Row(
                children: [
                  Text('      \n'),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('5.0   '),
                  Text('(2343 Reviews)', style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste ... Read more',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: height / 9,
        color: Colors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('        '),
                Text('₹150',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            Container(
                alignment: Alignment.center,
                height: 60,
                width: 135,
                decoration: BoxDecoration(
                  color: Color(0xff0DB296),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}

int index = 0;
