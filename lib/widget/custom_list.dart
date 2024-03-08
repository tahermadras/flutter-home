import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  String? Title, SubTitle;
  IconData? Leading,  Trailing;

  CustomList({
    required this.Title,
    required this.SubTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        child:
        ListTile(
          onTap: (){},
          tileColor: Colors.blueGrey.shade100,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue, width: 1.5),
              borderRadius: BorderRadius.circular(5)
          ),
          leading: Icon(Icons.account_box),
          title: Text(Title!),
          subtitle: Text(SubTitle!),
          trailing: Icon(Icons.delete, color: Colors.red),
        ),
      ),
    );
  }
}
