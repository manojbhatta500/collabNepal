import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  width: 0.50 * width,
                  height: 0.60 * height,
                  child: Image.asset('assets/logo.png')),
            ),
            SizedBox(
              height: 0.10 * height,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.10 * width),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    suffix: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.10 * width),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Re-password new password',
                    border: UnderlineInputBorder(),
                    suffix: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 0.30 * height,
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(70, 16, 70, 16),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/front_page');
                  },
                  child: Text(
                    'Change password ',
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
                    Navigator.pushReplacementNamed(context, '/front_page');
                  },
                  child: Text(
                    'Cancel ',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 0.10 * height,
            )
          ],
        ),
      ),
    );
  }
}
