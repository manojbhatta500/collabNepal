import 'package:collabnepal/custom_widget/hotel_container.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HotelServices {
  List<Hotel_container> hotellist = [];

  


  var api = 'https://collabnepal.com/api/hotels';
  
  Future<void> getHotels() async {

    var realApi = Uri.parse(api);
    try {
      http.Response getResponse = await http.get(realApi);
      var responseBody = getResponse.body;
      print('Got response response body : $responseBody');
      if (getResponse.statusCode == 200) {
        print('Response code was successful: ${getResponse.statusCode}');
        // Parse the JSON data from the response body
        Map<String, dynamic> jsonData = jsonDecode(responseBody);

        // Extract the "data" list
        List<dynamic> hotelDataList = jsonData['data'];
        print(hotelDataList);

        // Clear the existing hotel list before adding new data
        hotellist.clear();

        // Iterate through the JSON data and create Hotel_container widgets
        for (var item in hotelDataList) {
          Hotel_container hotel = Hotel_container(
            id: item['id'],
            name: item['name'],
            city: item['city'],
            slug: item['slug'],
            shortDescription: item['short_description'],
            description: item['description'],
            location: item['location'],
            longitude: item['longitude'],
            latitude: item['latitude'],
            image: item['image'],
          );
          hotellist.add(hotel);
        }
        print('Parsed ${hotellist.length} hotels.');
      } else {
        print(
            'There was an error while getting data: ${getResponse.statusCode}');
      }
    } catch (e) {
      print('Error getting API result: $e');
    }
  }
}
