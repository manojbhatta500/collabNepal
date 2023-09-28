import 'package:flutter/material.dart';

class recomended extends StatelessWidget {
  final String image_string;
  final String image_name;
  recomended({required this.image_string, required this.image_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 200,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            '$image_string',
          ),
          Text('$image_name')
        ],
      ),
    );
  }
}
