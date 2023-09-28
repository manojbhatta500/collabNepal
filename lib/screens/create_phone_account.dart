import 'package:flutter/material.dart';

import 'package:collabnepal/services/Services.dart';
import 'package:another_flushbar/flushbar.dart';

class Create_phonenumber_account extends StatefulWidget {
  const Create_phonenumber_account({super.key});

  @override
  State<Create_phonenumber_account> createState() =>
      _Create_phonenumber_accountState();
}

class _Create_phonenumber_accountState
    extends State<Create_phonenumber_account> {
  TextEditingController number = TextEditingController();

  services conductor = services();

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
                    height: 0.30 * height,
                    child: Image.asset('assets/logo.png')),
              ),
              Center(
                child: Text(
                  'Your Phone Number',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 18),
                child: Text(
                  'Enter your mobile number to register an account',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff999999)),
                ),
              ),
              Container(
                  width: 0.80 * width,
                  height: 40,
                  child: TextField(
                    controller: number,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  )),
              SizedBox(
                height: 0.40 * height,
              ),
              Container(
                width: 0.7 * width,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      if (number.text.length < 10) {
                        print('pressed');
                        Flushbar(
                          duration: Duration(seconds: 3),
                          icon: Icon(Icons.error),
                          title: 'Error',
                          message: 'mobile number should be of 10 digit',
                          flushbarPosition: FlushbarPosition.BOTTOM,
                          borderRadius: BorderRadius.circular(10),
                          margin: EdgeInsets.all(5),
                        )..show(context);
                      }
                      conductor.register_number(number.text, context);
                    },
                    child: Text(
                      'Send Code',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 0.7 * width,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.black))),
                    onPressed: () {},
                    child: Text(
                      'Sign up with email',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
              ),
              SizedBox(
                height: 0.10 * height,
              )
            ],
          ),
        ),
      ),
    );
  }
}
