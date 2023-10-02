import 'package:collabnepal/constants/constant.dart';
import 'package:collabnepal/services/Services.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerifyAccountPage extends StatefulWidget {
  const VerifyAccountPage({super.key});

  @override
  State<VerifyAccountPage> createState() => _VerifyAccountPageState();
}

class _VerifyAccountPageState extends State<VerifyAccountPage> {
  TextEditingController input_otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    final number = ModalRoute.of(context)!.settings.arguments;
    services conductor = services();

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                    width: 0.50 * width,
                    height: 0.50 * height,
                    child: Image.asset('assets/logo.png')),
              ),
              Center(
                child: Text(
                  'Verify Account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 18),
                  child: Text(
                    '''Enter 4 digit code we have sent 
            to $number''',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff999999)),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: input_otp,
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Center(
                child: Text(
                  'Haven’t received verification code?',
                  style: mini_style,
                ),
              ),
              Center(
                child: Text(
                  'Resend Code',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 0.05 * height,
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
                      print('${input_otp.text}this is an otp check ');
                      conductor.verify_otp(input_otp.text, context);
                    },
                    child: Text(
                      'Verify now',
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
