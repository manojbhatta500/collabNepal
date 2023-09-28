import 'package:flutter/material.dart';
import 'package:collabnepal/custom_widget/box_container.dart';
import 'package:collabnepal/custom_widget/boutiqueProduct.dart';

class Boutique extends StatefulWidget {
  const Boutique({super.key});

  @override
  State<Boutique> createState() => _BoutiqueState();
}

class _BoutiqueState extends State<Boutique> {
  List<Boutique_product> boutiqueproduct = [
    Boutique_product(
        boutique_pic: 'assets/shampoo.png', boutique_name: 'sunsilk'),
    Boutique_product(
        boutique_pic: 'assets/shampoo.png', boutique_name: 'sunsilk'),
    Boutique_product(
        boutique_pic: 'assets/shampoo.png', boutique_name: 'sunsilk'),
    Boutique_product(
        boutique_pic: 'assets/shampoo.png', boutique_name: 'sunsilk'),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/home.png'),
          label: 'home',
        ),
        BottomNavigationBarItem(
            icon: Image.asset('assets/fav.png'), label: 'favroite'),
        BottomNavigationBarItem(
            icon: Image.asset('assets/cart.png'), label: 'cart'),
        BottomNavigationBarItem(
            icon: Image.asset('assets/user.png'), label: 'user')
      ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 0.50 * height,
              child: Stack(
                children: [
                  Box_container(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 150,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/boutique.png'),
                                    backgroundColor: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                  Text('Boutique')
                                ],
                              ),
                            ],
                          )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/taylor');
                  },
                  child: Text(
                    'Our Top products',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: boutiqueproduct,
              ),
            )
          ],
        ),
      ),
    );
  }
}
