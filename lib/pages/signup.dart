// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../comp/cop.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          //color: Colors.amber,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Text('  Sign UP',
                            style: TextStyle(
                                fontFamily: "myfont", fontSize: 30.0)),
                        SizedBox(
                          height: 35,
                        ),
                        SvgPicture.asset(
                          "assets/icons/signup.svg",
                          width: 220,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1E6FF),
                            borderRadius: BorderRadius.circular(34),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: "Your Email :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23.0,
                        ),
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1E6FF),
                            borderRadius: BorderRadius.circular(34),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                suffix: Icon(
                                  Icons.visibility,
                                  color: Colors.purple[900],
                                ),
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.purple[800],
                                  size: 19,
                                ),
                                hintText: "Password :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 17.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(fontSize: 17),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF6F35A5)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 120)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(34)))),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an accout? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/login");
                              },
                              child: Text(
                                " Log in",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: size.height * 0.02),
                          width: size.width * 0.8,
                          child: Row(
                            children: <Widget>[
                              buildDivider(),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "OR",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              buildDivider(),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 45),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.purple, width: 1)),
                                  child: SvgPicture.asset(
                                    "assets/icons/facebook.svg",
                                    color: Colors.purple[400],
                                    height: 27,
                                    width: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 22,
                              ),
                                GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.purple, width: 1)),
                                  child: SvgPicture.asset(
                                    "assets/icons/twitter.svg",
                                    color: Colors.purple[400],
                                    height: 27,
                                    width: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 22,
                              ),
                                GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.purple, width: 1)),
                                  child: SvgPicture.asset(
                                    "assets/icons/google-plus.svg",
                                    color: Colors.purple[400],
                                    height: 27,
                                    width: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 22,
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 98,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
