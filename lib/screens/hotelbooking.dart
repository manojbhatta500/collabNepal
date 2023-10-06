import 'package:collabnepal/custom_widget/box_container.dart';
import 'package:collabnepal/services/hotel_services.dart';

import 'package:flutter/material.dart';
import 'package:collabnepal/custom_widget/hotel_container.dart';

class HotelBooking extends StatefulWidget {
  const HotelBooking({super.key});

  @override
  State<HotelBooking> createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  List<Hotel_container> gethotellist = [];

  @override
  void initState() {
    super.initState();
    _fetchHotels();
  }

  Future<void> _fetchHotels() async {
    HotelServices manager = HotelServices();
    await manager.getHotels();
    setState(() {
      gethotellist = manager.hotellist.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
     
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 0.35 * height,
            child: Stack(
              children: [
                BoxContainer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/hotel.png',
                      height: 80,
                      width: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Best Hotels',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: gethotellist,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Top Selling',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
