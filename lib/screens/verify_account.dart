import 'package:collabnepal/constants/constant.dart';
import 'package:collabnepal/services/Services.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Verify_Account_Page extends StatefulWidget {
  const Verify_Account_Page({super.key});

  @override
  State<Verify_Account_Page> createState() => _Verify_Account_PageState();
}

class _Verify_Account_PageState extends State<Verify_Account_Page> {
  @override
  Widget build(BuildContext context) {
    TextEditingController input_otp = TextEditingController();
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
              PinCodeTextField(
                controller: input_otp,
                autofocus: true,
                hideCharacter: true,
                highlight: true,
                highlightColor: Colors.blue,
                defaultBorderColor: Colors.black,
                hasTextBorderColor: Colors.green,
                maxLength: 5,
                hasError: false,
                maskCharacter: "X",
                onTextChanged: (text) {
                  // OTP value changed
                  print('this is another check');
                },
                onDone: (text) {
                  // OTP value entered completely
                  print('this is a function check ');
                },
                pinBoxDecoration:
                    ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
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