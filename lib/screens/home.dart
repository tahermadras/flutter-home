import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu), color: Colors.black),
        title: Text("Home", style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.black),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),color: Colors.black),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_box), color: Colors.black),
        ],
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {  },
          //child: Text("Let's Begin", style: TextStyle(fontSize: 25)),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(200, 60),
            elevation: 7,
            side: BorderSide(color: Colors.black, width: 2),
            primary: Colors.black ,
            onPrimary: Colors.yellow,
            shape: StadiumBorder(),
            alignment: Alignment.center
            // padding: EdgeInsets.all(20)
          ),
          icon: Icon(FontAwesomeIcons.shoppingCart),
          label: Text("Cart", style: TextStyle(fontSize: 25)),

        ),
      ),
    );
  }
}
