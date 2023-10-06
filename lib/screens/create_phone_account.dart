import 'package:flutter/material.dart';

import 'package:collabnepal/services/Services.dart';
import 'package:another_flushbar/flushbar.dart';

class CreatePhonenumberAccount extends StatefulWidget {
  const CreatePhonenumberAccount({super.key});

  @override
  State<CreatePhonenumberAccount> createState() =>
      _CreatePhonenumberAccountState();
}

class _CreatePhonenumberAccountState extends State<CreatePhonenumberAccount> {
  TextEditingController number = TextEditingController();

  services conductor = services();

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
            SizedBox(height: 20,),
            
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
              height: 0.20 * height,
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
              height: 0.10 * height,
            )
          ],
        ),
      ),
    );
  }
}
