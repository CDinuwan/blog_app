import 'package:flutter/material.dart';
import 'LoginRegisterPage.dart';

void main() {
  runApp(new BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "BlogApp",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginRegisterPage(),
    );
  }
}
