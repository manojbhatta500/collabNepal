import 'package:flutter/material.dart';

class Create_Account_page extends StatefulWidget {
  const Create_Account_page({super.key});

  @override
  State<Create_Account_page> createState() => _Create_Account_pageState();
}

class _Create_Account_pageState extends State<Create_Account_page> {
  bool checkboxValue = false;

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
              Container(
                margin:
                    EdgeInsets.only(left: 0.01 * width, right: 0.01 * width),
                width: 0.80 * width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('Full Name'),
                    ),
                    Container(
                      height: 0.10 * height,
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 8),
                      child: Text('Email Address'),
                    ),
                    Container(
                      height: 0.10 * height,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Text('Password'),
                    ),
                    Container(
                      height: 0.10 * height,
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
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Text('Confirm password'),
                    ),
                    Container(
                      height: 0.10 * height,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: checkboxValue,
                            onChanged: (bool? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  checkboxValue = newValue;
                                });
                              }
                            },
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text('I have agree to our Terms and Condition')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.016 * height),
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
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 0.020 * height),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(88, 16, 88, 16),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(color: Colors.black))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/phonenumber');
                          },
                          child: Text(
                            'With phone number',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account ?'),
                        TextButton(
                            onPressed: null,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
