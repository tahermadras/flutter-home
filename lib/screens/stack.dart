import 'package:flutter/material.dart';

class StacK extends StatelessWidget {
  const StacK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade800,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade900,
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 320,
          //color: Colors.black,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/ch.jpg"), fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(22)),
            boxShadow: [
              BoxShadow(
                color: Colors.brown.shade200,
                spreadRadius:2,
                blurRadius: 10
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Positioned(
                  child: Text("Belgium Dark \nChocolate", style: TextStyle(
                    fontSize: 30,
                    color: Colors.brown.shade400,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Positioned(
                  top: 75,
                  child: Text("70% COCOA Intense Dark Bar", style: TextStyle(
                    fontSize: 20, color: Colors.brown.shade200
                  ),),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text("Net Weight: 100g", style: TextStyle(
                    fontSize: 15,color: Colors.white
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
