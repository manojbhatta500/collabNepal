import 'package:flutter/material.dart';
import 'package:collabnepal/screens/main_screens/cartsScreen.dart';
import 'package:collabnepal/screens/main_screens/favroite.dart';
import 'package:collabnepal/screens/main_screens/home_screens.dart';
import 'package:collabnepal/screens/main_screens/profile_screen.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/fav.png'),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/cart.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/user.png'),
            label: 'User',
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          HomeScreens(),
          Favroite(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
