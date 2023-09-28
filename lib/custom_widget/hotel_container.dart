import 'package:collabnepal/screens/hotel_details.dart';
import 'package:flutter/material.dart';

class Hotel_container extends StatelessWidget {
  final int id;
  final String name;
  final String city;
  final String slug;
  final String shortDescription;
  final String description;
  final String location;
  final String longitude;
  final String latitude;
  final String image;

  Hotel_container({
    required this.id,
    required this.name,
    required this.city,
    required this.slug,
    required this.shortDescription,
    required this.description,
    required this.location,
    required this.longitude,
    required this.latitude,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HotelDetails(
                      disctext: description,
                      image: image,
                      city: location,
                      name: name,
                    )));
      },
      child: Container(
          height: 300,
          width: 160,
          margin: EdgeInsets.all(20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  '$image',
                  height: 0.25 * height,
                  width: double.infinity,
                ),
                Text('$name')
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffF6F1F1))),
          )),
    );
  }
}
