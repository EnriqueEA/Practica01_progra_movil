import 'package:flutter/material.dart';
import 'package:login_practica/widgets/campo.dart';
import 'package:login_practica/widgets/method_access.dart';
import 'package:login_practica/widgets/texto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  bool checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Practica',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.arrow_back_rounded),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Login Now',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            ),
            Container(
              child: Text(
                'Please login to continue using our app.',
                style: TextStyle(fontSize: 14, color: Colors.black38),
              ),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texto('Login instantly:'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MethodAccess(name: 'fb.png'),
                  MethodAccess(name: 'gl.png'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texto('or login with email/mobile'),
              ],
            ),
            Campo('E-mail ID or Mobile Number', false),
            Campo('Password', true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Login to my account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texto('Don´t have a account? '),
                Text(
                  ' Registrer now',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
