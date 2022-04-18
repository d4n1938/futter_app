import 'package:flutter/material.dart';

class MyCamera extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        // Appbar
        body: Center(child: Icon(Icons.cloud)));
  }
}