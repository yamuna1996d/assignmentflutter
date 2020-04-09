import 'package:assignment/Views/Login.dart';
import 'package:flutter/material.dart';

void main() => runApp(Project());

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}
