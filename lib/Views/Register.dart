import 'package:assignment/Models/registerModel.dart';
import 'package:assignment/Views/Login.dart';
import 'package:flutter/material.dart';
import 'package:assignment/Models/registerModel.dart';
import 'package:http/http.dart'as http;
import 'dart:async';
import 'dart:convert';

Future<RegisterModel> sendData(String url,{Map body}) async{
  return http.post(url,body:body).then( (http.Response response) {
    print(response.body);
    return ( json.decode(response.body)) ;
  });
}
class Register extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController empcode=TextEditingController();
  TextEditingController company=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController cpass=TextEditingController();
  String Apiurl="https://noderegist.herokuapp.com/register";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: <Widget>[
            Center(
              child: Container(
                  height: 705,
                  width: 400,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.blue],
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
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.white)),
                        controller: name,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Employee Code",
                            hintStyle: TextStyle(color: Colors.white)),
                        controller: empcode,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Company",
                            hintStyle: TextStyle(color: Colors.white)),
                        controller: company,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Email id",
                            hintStyle: TextStyle(color: Colors.white)),
                        controller: email,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Phone",
                            hintStyle: TextStyle(color: Colors.white)),
                        controller: phone,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        controller: pass,
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.white)),
                        controller: cpass,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () async{
                            String  a = name.text.toString();
                            String b = empcode.text.toString();
                            var c=company.text.toString();
                            String d = email.text.toString();
                            var e=phone.text.toString();
                            var f=pass.text.toString();
                            var g=cpass.text.toString();
                            if(f == g){
                              RegisterModel regmodel=RegisterModel(empname: a,
                                  empcode: b,
                                  company: c,
                                  email: d,
                                  phone: e,
                                pass: f,
                              );
                              await sendData(Apiurl,body: regmodel.toMap());
                            }
                            else{
                              print("Password and Confirm password is not correct.....Try again!");
                            }
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
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
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
                                    "Back to Login",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]
                            ),
                          )
                      ),
                    ],
                  )),
            )
          ],
        )),
      ),
    );
  }
}
