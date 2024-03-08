import 'package:flutter/material.dart';

class List_View_Build extends StatelessWidget {

   List_View_Build({super.key});
   List<String> PName=["Table", "Chair", "Bed"];
   List<String> PDetails=["Wooden Dinning Table", "Office cum Gaming Chair", "Double King size Bed"];
   List<String> PPrice=["10,000", "5,000", "25,000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view & Drawer"),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home,color: Colors.white),
                  Text("Home", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart,color: Colors.white),
                  Text("Shop", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite,color: Colors.white),
                  Text("Fav", style: TextStyle(color: Colors.white))
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.settings,color: Colors.white),
                  Text("Settings", style: TextStyle(color: Colors.white))
                ],
              ),
            )
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        mini: false,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Taher Madras"), accountEmail: Text("taherace52@gmail.com"),
              otherAccountsPictures: [
              CircleAvatar(child: Image.asset("images/Deadpool.jpeg"),),
              CircleAvatar(child: Image.asset("images/Deadpool.jpeg"),)
            ],
              currentAccountPicture: CircleAvatar(child: Image.asset("images/Deadpool.jpeg"),),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Account Info"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.golf_course_outlined),
              title: Text("Golf Details"),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("Alarm Details"),
            ),
            Padding(padding: EdgeInsets.all(25),
            child: Text("Labels", style: TextStyle(fontSize: 17)),),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Label 1"),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Label 2"),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Label 3"),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Label 4"),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: PName.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(child: Text(PName[index].characters.first),),
              title: Text(PName[index]),
              subtitle: Text(PDetails[index]),
              trailing: Text(PPrice[index]),
            );
          },
        ),
      ),
    );
  }
}
