import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white,width: 3),
          image: DecorationImage(image: AssetImage("images/Deadpool.jpeg"),),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade900,
              blurRadius: 20,
              spreadRadius: 10,
              offset: Offset(8, 8)
            )
          ]
        ),
      ),
      appBar: AppBar(
        title: Text("Deadpool".toUpperCase(), style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      backgroundColor: Colors.blueGrey.shade600,
    );
  }
}

int getrand() {
  return Random().nextInt(100);
}
