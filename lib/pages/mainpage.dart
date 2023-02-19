import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

import 'package:login_page/pages/signup_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: MediaQuery.of(context).size.height * 0.3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Please Sign in to continue",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          margin: EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Email",
                                icon: Icon(
                                  FeatherIcons.mail,
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          margin: EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Password",
                                icon: Icon(
                                  FeatherIcons.lock,
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            width: 175,
                            height: 60,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(40),
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        fontSize: 23, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    FeatherIcons.arrowRight,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 25.0,
                                      color: Colors.amber.shade400,
                                      offset: Offset(7.0, 8.0))
                                ],
                                gradient: LinearGradient(colors: [
                                  Colors.amber.shade400,
                                  Colors.amber.shade800
                                ]),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                      ),
                    ])),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              TextButton(
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.amber.shade400, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
