import 'package:collabnepal/custom_widget/cardCart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff3EB846),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        print('tapped button');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.person_outlined,
                                  size: 30, color: Colors.white),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.shopping_cart_outlined,
                                  size: 30, color: Colors.white)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Cart",
                            style: const TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                                height: 20 / 20,
                                letterSpacing: 1),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 0.7 * height,
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      child: CardCart(
                                        image: 'assets/watch.png',
                                        name: 'Mens Grenen Titanium Watch',
                                        quantity: 1,
                                        price: '10000',
                                      ),
                                    ),
                                    SizedBox(height: 25),
                                  ],
                                );
                              },
                            ))
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
