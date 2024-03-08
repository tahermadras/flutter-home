import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  const RowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image.asset("images/Deadpool.jpeg")),
                Expanded(child: Image.asset("images/Deadpool.jpeg"),flex: 2,),
                Expanded(child: Image.asset("images/Deadpool.jpeg"),flex: 6,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: 30,color:Colors.yellow,),
                Icon(Icons.star, size: 30,color:Colors.yellow,),
                Icon(Icons.star, size: 30,color:Colors.yellow,),
                Icon(Icons.star_border, size: 30,color:Colors.yellow,),
                Icon(Icons.star_border, size: 30,color:Colors.yellow,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.thumb_up, size: 40,), onPressed: () {  },),
                    Text("Like")
                  ],
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.thumb_down, size: 40,), onPressed: () {  },),
                    Text("Unlike")
                  ],
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.share, size: 40,), onPressed: () {  },),
                    Text("Share")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
