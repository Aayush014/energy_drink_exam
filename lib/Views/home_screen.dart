import 'package:energy_drink_exam/Utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 20,
              ),
              SizedBox(
                height: height / 15,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.sort_down,
                      size: 35,
                    ),
                    Icon(
                      CupertinoIcons.search,
                      size: 35,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: height / 4,
                    width: width / 1.1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'Assets/img/sale.png',
                        )),
                  ),
                  Positioned(
                    right: 15,
                    bottom: -2,
                    child: Image.asset('Assets/img/cool_berry.png'),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height / 18.5,
                    width: width / 3.5,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        )
                      ],
                      color: const Color(0xff0DB296),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width / 13,
                          height: width / 13,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset('Assets/img/small1.png'),
                        ),
                        const Text(
                          '1 Pack',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height / 18.5,
                    width: width / 3.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width / 13,
                          height: width / 13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset('Assets/img/small2.png'),
                        ),
                        const Text(
                          '2 Pack',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height / 18.5,
                    width: width / 3.5,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width / 13,
                          height: width / 13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset('Assets/img/small4.png'),
                        ),
                        const Text(
                          '4 Pack',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 50,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('All Flavours',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: List.generate(
                      pro[0].length,
                      (index) => InkWell(
                        onTap: () {

                          setState(() {
                            Navigator.of(context).pushNamed('pro');
                            product.add([0][index]);
                          });
                        },
                        child: customBox(
                          context,
                          pro[0][index]['img'],
                          pro[0][index]['name'],
                          pro[0][index]['rate'],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      pro[1].length,
                      (index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('pro');
                          setState(() {

                          });
                        },
                        child: customBox(
                          context,
                          pro[1][index]['img'],
                          pro[1][index]['name'],
                          pro[1][index]['rate'],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget customBox(BuildContext context, String i1,String b1,String p1) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          height: height / 3.2,
          width: width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, spreadRadius: 2, blurRadius: 1)
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: height / 5.5,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(i1),
                ),
                 const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('All New',
                      style: TextStyle(color: Color(0xff0DB296))),
                ),
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Text(b1,
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: height / 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text('₹${p1}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: height / 24,
                        width: height / 24,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            const Icon(CupertinoIcons.add, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
