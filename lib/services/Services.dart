import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';

var register_id;
bool? verify_status;
String? verify_message;
var verify_token;

class services {
  late BuildContext context;

  var login_token;
  var userId;

  Future<void> sendNumber(phonenumber, BuildContext context) async {
    var forNumberApi = 'https://collabnepal.com/api/login';
    var realApi = Uri.parse(forNumberApi);
    Map<String, String> realdata = {
      'mobile': phonenumber,
    };

    http.Response sendData = await http.post(
      realApi,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(realdata),
    );

    print('Response status code: ${sendData.statusCode}');
    print('Response headers: ${sendData.headers}');
    print('Response body: ${sendData.body}');

    if (sendData.statusCode == 200) {
      try {
        Map<String, dynamic> responseBody = jsonDecode(sendData.body);
        print('successful');
        login_token = responseBody['data']['token'];
        userId = responseBody['data']['user']['id'];
        print('token and user id are loaded successfully');
        Navigator.pushNamed(context, '/front_page');
      } catch (e) {
        print('Error parsing JSON response: $e');
      }
    } else {
      print('Something went wrong, status code: ${sendData.statusCode}');
      if (sendData.statusCode == 404) {
        print('there is something wrong with the api');
        Flushbar(
          duration: Duration(seconds: 3),
          icon: Icon(Icons.error),
          title: 'hey user',
          message: 'problem with server. we are working on it.',
          flushbarPosition: FlushbarPosition.BOTTOM,
          borderRadius: BorderRadius.circular(10),
          margin: EdgeInsets.all(5),
        )..show(context);
      } else if (sendData.statusCode == 500) {
        print('internal server error');
        print('error code 500');
        Flushbar(
          duration: Duration(seconds: 3),
          icon: Icon(Icons.error),
          title: 'hey user',
          message: 'problem with server. we will fix this quick',
          flushbarPosition: FlushbarPosition.BOTTOM,
          borderRadius: BorderRadius.circular(10),
          margin: EdgeInsets.all(5),
        )..show(context);
      } else if (sendData.statusCode == 422) {
        print('unvalid user');
        print('page not found 404 error');

        Flushbar(
          duration: Duration(seconds: 3),
          icon: Icon(Icons.error),
          title: 'hey user',
          message: 'you are not logged in',
          flushbarPosition: FlushbarPosition.BOTTOM,
          borderRadius: BorderRadius.circular(10),
          margin: EdgeInsets.all(5),
        )..show(context);
      }
      // Add more error handling as needed.
    }
  }

  var status;

  var given_number;

  Future<void> register_number(String number, BuildContext context) async {
    print('button was pressed');
    var register_api = 'https://collabnepal.com/api/register';
    var real_register = Uri.parse(register_api);
    Map<String, String> data = {'mobile': number.trim()};
    print('step1');
    http.Response sendnum = await http.post(
      real_register,
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    print('step 2 : now entering try method');
    try {
      print('inside try block');
      if (sendnum.statusCode == 200) {
        Map<String, dynamic> realdata = jsonDecode(sendnum.body);
        print('successfull ');
        status = realdata['status'];
        print(status);
        register_id = realdata['data']['user']['id'];
        print('registerd id : ${register_id}');
        given_number = realdata['data']['user']['mobile'].toString();
        print(given_number);
        Flushbar(
          duration: Duration(seconds: 3),
          icon: Icon(Icons.error),
          title: 'hey user',
          message: 'successfull',
          flushbarPosition: FlushbarPosition.BOTTOM,
          borderRadius: BorderRadius.circular(10),
          margin: EdgeInsets.all(5),
        )..show(context);
        Navigator.pushNamed(context, '/verify', arguments: given_number);
      }
      if (sendnum.statusCode == 422) {
        print('there was something wrong with the user');
      }
    } catch (e) {
      print(e);
    }
    print('end');
  }

  Future<void> verify_otp(String otp, BuildContext context) async {
    var verifyApi = 'https://collabnepal.com/api/otp-verify/$register_id';
    var realapi = Uri.parse(verifyApi);
    Map<String, String> otpdata = {'sent_otp': otp};
    var realotpdata = jsonEncode(otpdata);
    try {
      http.Response sentotp = await http.post(
        realapi,
        body: realotpdata,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print('statuscode${sentotp.statusCode} ');

      if (sentotp.statusCode == 200) {
        print('everything is right');
        var data = jsonDecode(sentotp.body);

        verify_status = data['status'];
        print(verify_status);
        verify_message = data['message'];
        print(verify_message);
        userId = data['user']['id'];
        print(userId);
        verify_token = data['token'];
        print(verify_token);
        Navigator.pushNamed(context, '/account_created');
      } else {
        print('something went wrong during the api calling');
        print('here is the problem');
        print('Response body: ${sentotp.body}');
        Flushbar(
          duration: Duration(seconds: 3),
          icon: Icon(Icons.error),
          title: 'hey user',
          message: " sorry otp didn't matched",
          flushbarPosition: FlushbarPosition.BOTTOM,
          borderRadius: BorderRadius.circular(10),
          margin: EdgeInsets.all(5),
        )..show(context);
      }
    } catch (e) {
      print(e);
    }
  }
}
