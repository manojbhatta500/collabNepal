import 'package:flutter/material.dart';
import 'package:collabnepal/constants/constant.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
                width: 0.50 * width,
                height: 0.30 * height,
                child: Image.asset('assets/logo.png')),
          ),
          Center(
            child: Text(
              'Log in',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 46, right: 57, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: mini_style,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: mini_style,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Image.asset(
                          'assets/eye.png',
                          width: 10,
                          height: 10,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Forgot Password ?',
                        style: mini_style,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(88, 20, 88, 20),
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/forgot_password');
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account ?',
                      style: mini_style,
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Sign Up ?',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.01 * height,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
