import 'package:flutter/material.dart';

class List_View extends StatelessWidget {
  const List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_rounded)),
              title: Text("8:00 AM"),
              subtitle: Text("Wake up alarm"),
              trailing: Icon(Icons.delete),
              onTap: (){},
              tileColor: Colors.blueGrey.shade50,
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_rounded)),
              title: Text("9:00 AM"),
              subtitle: Text("Breakfst alarm"),
              trailing: Icon(Icons.delete),
              onTap: (){},
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_rounded)),
              title: Text("10:00 AM"),
              subtitle: Text("Office alarm"),
              trailing: Icon(Icons.delete),
              tileColor: Colors.blueGrey.shade50,
              onTap: (){},
            )
          ],
        ),
      )
    );
  }
}
