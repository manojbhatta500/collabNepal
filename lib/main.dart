import 'package:collabnepal/screens/account_created.dart';
import 'package:collabnepal/screens/boutique.dart';
import 'package:collabnepal/screens/main_screens/cartsScreen.dart';
import 'package:collabnepal/screens/change_password.dart';
import 'package:collabnepal/screens/create_phone_account.dart';
import 'package:collabnepal/screens/create_account_page.dart';
import 'package:collabnepal/screens/main_screens/favroite.dart';
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
        '/home': (context) => HomePage(),
        '/create_account': (context) => CreateAccountPage(),
        '/phonenumber': (context) => CreatePhonenumberAccount(),
        '/verify': (context) => VerifyAccountPage(),
        '/account_created': (context) => AccountCreatedPage(),
        '/login': (context) => LoginPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/change_password': (context) => ChangePassword(),
        '/front_page': (context) => FrontPage(),
        '/shop': (context) => Shop(),
        '/searched': (context) => Searched(),
        '/hotelbook': (context) => HotelBooking(),
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
