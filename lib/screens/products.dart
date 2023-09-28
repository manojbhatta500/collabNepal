import 'package:flutter/material.dart';
import 'package:collabnepal/custom_widget/box_container.dart';
import 'package:collabnepal/custom_widget/taylor_product.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Taylor_products> taylorlist = [
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/shampoo.png'),
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/shampoo.png'),
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/shampoo.png'),
    Taylor_products(
        taylor_name: 'albert shop', taylor_pic: 'assets/shampoo.png'),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
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
                                        AssetImage('assets/product.png'),
                                    backgroundColor: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                  Text('products')
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
                child: Text(
                  'Our Top taylors',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
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
