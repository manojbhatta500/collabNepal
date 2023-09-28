import 'package:flutter/material.dart';

class Account_Created_Page extends StatefulWidget {
  const Account_Created_Page({super.key});

  @override
  State<Account_Created_Page> createState() => _Account_Created_PageState();
}

class _Account_Created_PageState extends State<Account_Created_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  width: 0.50 * width,
                  height: 0.40 * height,
                  child: Image.asset('assets/logo.png')),
            ),
            Center(
              child: Text(
                'Account Created',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                child: Text(
                  '''Your account has been created successfully.
     Press continue to continue using the app''',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff999999)),
                )),
            SizedBox(
              height: 85,
            ),
            Center(
              child: Container(
                width: 0.20 * width,
                height: 0.20 * height,
                child: Image.asset(
                  'assets/created.png',
                ),
              ),
            ),
            SizedBox(
              height: 0.10 * height,
            ),
            Container(
              margin: EdgeInsets.only(left: 51, right: 51, top: 16),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(88, 16, 88, 16),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/front_page');
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
            ),
            Padding(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                child: Text(
                  '''By clicking continue, you agree to our
                Terms and Conditions ''',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff999999)),
                )),
            SizedBox(
              height: 0.10 * height,
            )
          ],
        ),
      ),
    ));
  }
}
