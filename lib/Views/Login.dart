import 'package:assignment/Views/Register.dart';
import 'package:assignment/Views/wlcome.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  TextEditingController ecode= TextEditingController();
  TextEditingController epass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green, Colors.lightGreen],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.elliptical(550, 560),
                        bottomRight: const Radius.elliptical(540, 580))),
              ),
              Container(
                height: 400,
                width: 200,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(60),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightGreenAccent, Colors.lightGreen],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: const Radius.circular(30),
                      bottomLeft: const Radius.circular(30),
                      topRight: const Radius.circular(30),
                      topLeft: const Radius.circular(30),
                    )),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Employee Code",
                      ),
                      controller: ecode,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      controller: epass,
                    ),
                    GestureDetector(
                        onTap: () {
                          String  ecod = ecode.text.toString();
                          String epas = epass.text.toString();
                          if(ecod=="test"||epas=="test"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()));
                          }
                          else{
                            print("Try again");
                          }
                        },
                        child: Container(
                          height: 50.0,
                          width: 300.0,
                          margin: EdgeInsets.only(
                              top: 20, left: 50, right: 50, bottom: 20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.deepOrange, Colors.orangeAccent],
                                begin: Alignment.center,
                                end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]
                          ),
                        )
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                        },
                        child: Container(
                          height: 50.0,
                          width: 300.0,
                          margin: EdgeInsets.only(
                               left: 50, right: 50, bottom: 20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.deepOrange, Colors.orangeAccent],
                                begin: Alignment.center,
                                end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Register",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
