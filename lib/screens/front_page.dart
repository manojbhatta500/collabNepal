import 'package:collabnepal/custom_widget/box_container.dart';
import 'package:flutter/material.dart';
import 'package:collabnepal/custom_widget/scroll_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Front_page extends StatefulWidget {
  const Front_page({super.key});

  @override
  State<Front_page> createState() => _Front_pageState();
}

class _Front_pageState extends State<Front_page> {
  void callbackFunction(int index, CarouselPageChangedReason reason) {
    print("Page changed to index $index due to $reason");
  }

  List<Scrollwidget> products = [
    // Replace with your product widgets
    Scrollwidget(
      image_name: 'assets/shoe.png',
      product_name: 'shoe',
      product_price: 180,
    ),
    Scrollwidget(
      image_name: 'assets/shoe.png',
      product_name: 'shoe',
      product_price: 180,
    ),
    Scrollwidget(
      image_name: 'assets/shoe.png',
      product_name: 'shoe',
      product_price: 180,
    ),
    Scrollwidget(
      image_name: 'assets/shoe.png',
      product_name: 'shoe',
      product_price: 180,
    ),
    Scrollwidget(
      image_name: 'assets/shoe.png',
      product_name: 'shoe',
      product_price: 180,
    ),

    // Add more product widgets as needed
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Widget> scrollpicture = [
      // Replace with your scrollpicture widgets
      Container(
        height: 200,
        width: 400,
        child: Image.asset(
          'assets/reuse.png',
        ),
      ),

      // Add more scrollpicture widgets as needed
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png'),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/fav.png'),
              label: 'favroite',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/cart.png'),
              label: 'cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/user.png'),
              label: 'user',
            ),
          ]),
          body: ListView(
            children: [
              SizedBox(
                width: double.infinity, // Set the width to your desired value
                height: 0.4 * height, // Set the height to your desired value
                child: Stack(
                  children: [
                    Box_container(),
                    Positioned(
                      height: 0.5 * height,
                      top: 40,
                      right: 10,
                      left: 20,
                      child: CarouselSlider(
                        items: scrollpicture,
                        options: CarouselOptions(
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                            viewportFraction: 1.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0.1 * width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('tapped hotel');
                          Navigator.pushNamed(context, '/hotelbook');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff3EB846))),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/hotel.png',
                                height: 80,
                                width: 80,
                              ),
                              Text(
                                'Hotel bookings',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('tapped shop');
                          Navigator.pushNamed(context, '/shop');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff3EB846))),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/shop.png',
                                height: 80,
                                width: 80,
                              ),
                              Text(
                                'Shop',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.04 * height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'New Products',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('View All'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3EB846)),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
