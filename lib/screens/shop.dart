import 'package:collabnepal/custom_widget/box_container.dart';
import 'package:collabnepal/custom_widget/recomended.dart';
import 'package:flutter/material.dart';
import 'package:collabnepal/custom_widget/scroll_widget.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<recomended> reco = [
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
  ];
  List<Scrollwidget> products = [
    Scrollwidget(
        image_name: 'assets/shoe.png',
        product_name: 'shoe',
        product_price: 180),
    Scrollwidget(
        image_name: 'assets/shoe.png',
        product_name: 'shoe',
        product_price: 180),
    Scrollwidget(
        image_name: 'assets/shoe.png',
        product_name: 'shoe',
        product_price: 180),
    Scrollwidget(
        image_name: 'assets/shoe.png',
        product_name: 'shoe',
        product_price: 180),
    Scrollwidget(
        image_name: 'assets/shoe.png', product_name: 'shoe', product_price: 180)
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
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
          children: [
            SizedBox(
              width: double.infinity,
              height: 0.50 * height,
              child: Stack(
                children: [
                  Box_container(),
                  Positioned(
                    top: 150,
                    left: 30,
                    right: 30,
                    child: Container(
                        height: 190,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/boutique');
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/boutique.png'),
                                    backgroundColor: Color(
                                      0xffD9D9D9,
                                    ),
                                  ),
                                ),
                                Text('botique')
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/taylor');
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/taylor.png'),
                                    backgroundColor: Color(0xffD9D9D9),
                                  ),
                                ),
                                Text('taylor')
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('tapped product');

                                    Navigator.pushNamed(context, '/product');
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/product.png'),
                                    backgroundColor: Color(0xffD9D9D9),
                                  ),
                                ),
                                Text('Product')
                              ],
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recomended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: reco,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Top selling',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: products,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Top selling',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: products,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
