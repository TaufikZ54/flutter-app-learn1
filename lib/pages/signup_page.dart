import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:login_page/pages/mainpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FeatherIcons.arrowLeft,
              color: Colors.grey,
            ),
            //replace with our own icon data.
          )),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(
            left: 40,
            top: MediaQuery.of(context).size.height * 0.2,
            right: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 6),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "FULL NAME",
                        labelStyle: TextStyle(color: Colors.black),
                        icon: Icon(
                          FeatherIcons.user,
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "EMAIL",
                        labelStyle: TextStyle(color: Colors.black),
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(color: Colors.black),
                        icon: Icon(
                          FeatherIcons.lock,
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "CONFIRM PASSWORD",
                        labelStyle: TextStyle(color: Colors.black),
                        icon: Icon(
                          FeatherIcons.lock,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 40, top: 50),
          child: Align(
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
                        "SIGN UP",
                        style: TextStyle(fontSize: 21, color: Colors.white),
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
                    gradient: LinearGradient(
                        colors: [Colors.amber.shade400, Colors.amber.shade800]),
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 85),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              TextButton(
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.amber.shade400, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
