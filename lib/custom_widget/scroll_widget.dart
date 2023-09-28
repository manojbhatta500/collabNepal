import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Scrollwidget extends StatelessWidget {
  late String image_name;
  late String product_name;
  late int product_price;
  Scrollwidget(
      {required this.image_name,
      required this.product_name,
      required this.product_price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Container(
        height: 170,
        width: 102,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 110,
              height: 105,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/91x99"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Image.asset(
                '$image_name',
                fit: BoxFit.cover,

              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding:  EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product_name.toString(),
                    style: TextStyle(
                      color: Color(0xFF3E4958),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 39.49,
                    height: 14.63,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD5DDE0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.93),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '5 Colors',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.58,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '\$${product_price} ',
                    style: TextStyle(
                      color: Color(0xFF3E4958),
                      fontSize: 10.24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
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
