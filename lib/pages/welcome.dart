// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: Column(
                  children: [
                      SizedBox(height: 35,),
                    Text('  Welcome!',
                        style: TextStyle(
                          fontFamily: "myfont",
                          fontSize: 30.0
                        )),
                            SizedBox(height: 35,),
                    SvgPicture.asset("assets/icons/chat.svg",width: 340,
                    ),
                     SizedBox(height: 55,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                     child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 17),
                        ),
                      style: ButtonStyle(
                       
                          backgroundColor:
                              MaterialStateProperty.all( Color(0xFF6F35A5)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 16, horizontal: 115)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(47)))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                       child: Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                        ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFF1E6FF)),
            
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 16, horizontal: 115)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(47)))),
                    ),
                  ],
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
