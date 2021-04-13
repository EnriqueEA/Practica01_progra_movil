import 'package:flutter/material.dart';
import 'package:login_practica/widgets/home.dart';

void main() => runApp(MyApp());

bool checked = false;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Practica',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
