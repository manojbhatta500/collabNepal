import 'package:flutter/material.dart';

class Boutique_product extends StatelessWidget {
  final String boutique_name;
  final String boutique_pic;
  Boutique_product({required this.boutique_pic, required this.boutique_name});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        width: 160,
        margin: EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                '$boutique_pic',
                height: 200,
                width: double.infinity,
              ),
              Text('$boutique_name')
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffF6F1F1))),
        ));
  }
}
