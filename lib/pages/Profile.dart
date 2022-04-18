import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Profile'),
        ),
        // Appbar
        body: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: ListView(
                children: const <Widget>[
                  ListTile(

                    tileColor: Color.fromARGB(100, 20, 100, 250),
                    iconColor: Colors.red,
                    leading: Icon(Icons.map),
                    focusColor: Colors.green,
                    hoverColor: Colors.blue,
                    title: Text('Map'),
                  ),
                  ListTile(
                    tileColor: Color.fromARGB(100, 20, 100, 250),
                    leading: Icon(Icons.photo_album),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                ],
              ),
            ),
        )
    );
  }
}