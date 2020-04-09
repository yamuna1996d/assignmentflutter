import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Emp Page"),
        ),
        body: Text("Welcome",style: TextStyle(color: Colors.deepPurple,fontSize: 40),),
      ),
    );
  }
}
