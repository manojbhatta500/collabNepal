import 'package:flutter/material.dart';

import 'package:collabnepal/custom_widget/recomended.dart';

class Searched extends StatefulWidget {
  const Searched({super.key});

  @override
  State<Searched> createState() => _SearchedState();
}

class _SearchedState extends State<Searched> {
  List<recomended> reco = [
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
    recomended(image_string: 'assets/scroll.png', image_name: 'shampoo'),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 0.30 * height,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xff3EB846),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Icon(Icons.person, size: 30, color: Colors.white),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.shopping_cart,
                                  size: 30, color: Colors.white)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 0.70 * width,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            height: 30,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/hotelbook');
                              },
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text('on sale')),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text('Price')),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text('short By')),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text('on sale')),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '53 results found',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
