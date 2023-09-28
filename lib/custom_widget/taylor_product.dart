import 'package:flutter/material.dart';

class Taylor_products extends StatelessWidget {
  final String taylor_name;
  final String taylor_pic;
  Taylor_products({required this.taylor_name, required this.taylor_pic});

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
                '$taylor_pic',
                height: 200,
                width: double.infinity,
              ),
              Text('$taylor_name')
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffF6F1F1))),
        ));
  }
}
