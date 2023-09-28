import 'package:flutter/material.dart';

class Hotel_details extends StatelessWidget {
  final String disctext;

  final String image;
  final String name;
  final String city;
  Hotel_details(
      {super.key,
      required this.image,
      required this.disctext,
      required this.city,
      required this.name});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 0.3 * height,
            width: double.infinity,
            child: Image.network(
              '$image',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_city,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '$name',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '$city',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              '$disctext ',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Text('map will go here//package import '),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/room_details');
              print('tapped gesture detector');
            },
            child: Container(
              width: 0.3 * width,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey),
              child: Center(child: Text('more details')),
            ),
          ),
        ],
      ),
    ));
  }
}
