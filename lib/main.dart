import 'package:collabnepal/screens/account_created.dart';
import 'package:collabnepal/screens/boutique.dart';
import 'package:collabnepal/screens/cartsScreen.dart';
import 'package:collabnepal/screens/change_password.dart';
import 'package:collabnepal/screens/create_phone_account.dart';
import 'package:collabnepal/screens/create_account_page.dart';
import 'package:collabnepal/screens/favroite.dart';
import 'package:collabnepal/screens/forgot_password.dart';
import 'package:collabnepal/screens/front_page.dart';
import 'package:collabnepal/screens/home_page.dart';

import 'package:collabnepal/screens/hotelbooking.dart';
import 'package:collabnepal/screens/login_page.dart';
import 'package:collabnepal/screens/room_details.dart';
import 'package:collabnepal/screens/searched.dart';
import 'package:collabnepal/screens/shop.dart';
import 'package:collabnepal/screens/taylor.dart';
import 'package:collabnepal/screens/verify_account.dart';
import 'package:collabnepal/screens/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Manager());
}

class Manager extends StatelessWidget {
  const Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home_Page(),
        '/create_account': (context) => Create_Account_page(),
        '/phonenumber': (context) => Create_phonenumber_account(),
        '/verify': (context) => Verify_Account_Page(),
        '/account_created': (context) => Account_Created_Page(),
        '/login': (context) => Login_Page(),
        '/forgot_password': (context) => ForgotPassword_page(),
        '/change_password': (context) => Change_password(),
        '/front_page': (context) => Front_page(),
        '/shop': (context) => Shop(),
        '/searched': (context) => Searched(),
        '/hotelbook': (context) => Hotel_Booking(),
        '/boutique': (context) => Boutique(),
        '/taylor': (context) => Taylor(),
        '/product': (context) => Products(),
        '/room_details': (context) => Room_details(),
        '/favroite': (context) => Favroite(),
        '/cart': (context) => CartScreen()
      },
    );
  }
}
