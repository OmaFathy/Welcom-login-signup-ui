// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                child: SingleChildScrollView(
                  child: Column(
                               // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text('  Log In',
                          style: TextStyle(fontFamily: "myfont", fontSize: 30.0)),
                      SizedBox(
                        height: 35,
                      ),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        width: 340,
                      ),
                      SizedBox(
                        height: 55,
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
                          "LOGIN",
                          style: TextStyle(fontSize: 17),
                        ),
                      style: ButtonStyle(
                       
                          backgroundColor:
                              MaterialStateProperty.all( Color(0xFF6F35A5)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 16, horizontal: 120)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34)))),
                    ),
                     SizedBox(
                        height: 17,
                      ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an accout? "),

                          GestureDetector(
                            onTap: (){ Navigator.pushNamed(context, "/signup");},
                            child: Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),)),

                        ],
                      )
                    ],
                  ),
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
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 130,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
