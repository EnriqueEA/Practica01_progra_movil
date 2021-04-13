import 'package:flutter/material.dart';
import 'package:login_practica/widgets/texto.dart';

class Campo extends StatelessWidget {
  final String label;
  final bool hide;

  const Campo(this.label, this.hide);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 0),
              child: Texto(this.label)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23, vertical: 4),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey[200],
                width: 1.7,
              ),
            ),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: hide,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
