import 'package:flutter/material.dart';

class CloudScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        // Appbar
        body: Center(child: Icon(Icons.cloud)));
  }
}