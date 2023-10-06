import 'package:carousel_slider/carousel_slider.dart';

import 'package:collabnepal/custom_widget/scroll_widget.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> scrollpicture = [
      Container(
        height: 200,
        width: 400,
        child: Image.asset(
          'assets/reuse.png',
        ),
      ),
    ];

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity, // Set the width to your desired value
            height: 0.4 * height, // Set the height to your desired value
            child: Stack(
              children: [
                Container(
                  height: 0.30 * height,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xff3EB846),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.person_outline_outlined,
                                            size: 30, color: Colors.white),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        IconButton(onPressed: (){
                                          Navigator.pushNamed(context, '/front_page');
                                        }, icon: Icon(Icons.shopping_cart_outlined,
                                            size: 30, color: Colors.white))
                                        
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 0.64 * width,
                              height: 45,
                              margin: EdgeInsets.only(left: 0.1 * width),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Search for a Brand',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFD5DDE0),
                                      fontSize: 10.24,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w900,
                                      height: 0,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey.withOpacity(0.6),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 0.1 * width),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white,
                              ),
                              height: 45,
                              width: 45,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
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
                Column(
                  children: [
                    Container(
                      width: 144,
                      height: 87,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'HOTEL BOOKINGS',
                      style: TextStyle(
                        color: Color(0xFF3E4958),
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 144,
                      height: 87,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'SHOP',
                      style: TextStyle(
                        color: Color(0xFF3E4958),
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.04 * height,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Products',
                  style: TextStyle(
                    color: Color(0xFF3E4958),
                    fontSize: 13.16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
                Container(
                  width: 83,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.12)),
                        backgroundColor: Color(0xff3EB846)),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Hotel Listing',
                  style: TextStyle(
                    color: Color(0xFF3E4958),
                    fontSize: 13.16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
                Container(
                  width: 83,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.12)),
                        backgroundColor: Color(0xff3EB846)),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Products',
                  style: TextStyle(
                    color: Color(0xFF3E4958),
                    fontSize: 13.16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
                Container(
                  width: 83,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.12)),
                        backgroundColor: Color(0xff3EB846)),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products,
            ),
          ),
        ],
      ),
    );
  }
}
