import 'package:flutter/material.dart';
import 'package:collabnepal/custom_widget/box_container.dart';
import 'package:collabnepal/custom_widget/taylor_product.dart';

class Taylor extends StatefulWidget {
  const Taylor({super.key});

  @override
  State<Taylor> createState() => _TaylorState();
}

class _TaylorState extends State<Taylor> {
  List<Taylor_products> taylorlist = [
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/taylorshop.jpg'),
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/taylorshop.jpg'),
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/taylorshop.jpg'),
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/taylorshop.jpg'),
  ];
  int cureentstate = 0;
  void settap(int index) {
    setState(() {
      cureentstate = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cureentstate,
          onTap: settap,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/home.png'), label: 'home'),
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
                  BoxContainer(),
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
                                        AssetImage('assets/taylor.png'),
                                    backgroundColor: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                  Text('Taylors')
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
                    Navigator.pushReplacementNamed(context, '/product');
                  },
                  child: Text(
                    'Our Top taylors',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: taylorlist,
              ),
            )
          ],
        ),
      ),
    );
  }
}
