import 'package:flutter/material.dart';
import 'package:collabnepal/constants/constant.dart';

class ForgotPassword_page extends StatefulWidget {
  const ForgotPassword_page({super.key});

  @override
  State<ForgotPassword_page> createState() => _ForgotPassword_pageState();
}

class _ForgotPassword_pageState extends State<ForgotPassword_page> {
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
            Center(
              child: Container(
                  margin:
                      EdgeInsets.fromLTRB(0.20 * height, 10, 0.20 * height, 5),
                  child: Image.asset(
                    'assets/fp.png',
                    width: 179,
                    height: 150,
                  )),
            ),
            Center(
              child: Text(
                '''
Enter your registered email below to receive
      password reset instruction


              ''',
                style: mini_style,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
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
                  Center(
                    child: Container(
                      width: 0.60 * width,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/change_password');
                          },
                          child: Text(
                            'Send Verification code',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
