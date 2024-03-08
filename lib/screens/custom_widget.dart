
import 'package:flutter/material.dart';

import '../widget/custom_list.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Widget"),
      centerTitle: true),
      body: Container(
        child: ListView(
          children: [
            CustomList( Title: 'Taher', SubTitle: '+91-8824525121',),
            CustomList( Title: 'Fire', SubTitle: '+91-8824525121',),
            CustomList( Title: 'Ravi', SubTitle: '+91-8824525121',),
          ],
        ),
      ),
    );
  }
}
