import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.

  OneContainer(){
    margin: EdgeInsets.all(10);
    padding: EdgeInsets.only(top: 50, left: 100,right:100,bottom: 50);
    decoration: BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.circular(10),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'General',
            style: TextStyle(fontSize: 24),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 40, 40, 40),

        body: Center(
          child: ListView(
              children: [
              Container(
                margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 50, left: 100,right:100,bottom: 50),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.cloud)
              ),
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 50, left: 100,right:100,bottom: 50),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.cloud)
                ),
                Container(
                  child: OneContainer(),
                ),

                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 50, left: 100,right:100,bottom: 50),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.sunny)
                ),

              ],
          ),
        )
    );
  }
}