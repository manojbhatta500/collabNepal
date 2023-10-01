import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
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
                              Icon(Icons.person_outline_outlined,
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
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
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
    );
  }
}
