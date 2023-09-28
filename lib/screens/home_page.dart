import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                      width: 0.50 * width,
                      height: 0.50 * height,
                      child: Image.asset('assets/logo.png')),
                ),
                SizedBox(
                  height: 0.15 * height,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(88, 16, 88, 16),
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_account');
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(99, 16, 100, 16),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.black))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/favroite');
                      },
                      child: Text(
                        'Login now ',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: 0.10 * height,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
