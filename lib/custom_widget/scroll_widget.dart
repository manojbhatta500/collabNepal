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
    return Container(
      margin: EdgeInsets.all(25),
      height: 150,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            '$image_name',
            width: 80,
            height: 80,
          ),
          Text(
            product_name.toString(),
            style: TextStyle(fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$product_price',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.add)
            ],
          )
        ],
      ),
    );
  }
}
