import 'package:flutter/material.dart';

class MethodAccess extends StatelessWidget {
  final String name;

  const MethodAccess({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/$name',
        height: 26,
      ),
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200], width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}