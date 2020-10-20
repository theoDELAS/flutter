import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp/widget/appBar.dart';
import 'package:tp/widget/article.dart';
import 'package:tp/widget/total.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/total': (context) => total(25),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: appBar(),
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "MA LISTE DE COURSES",
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Article("Bananes", "4"),
                      Article("Haricots", "2"),
                      Article("Yaourt", "6"),
                      Article("Chocolat", "4"),
                      Article("Pain", "1"),
                      Article("TV", "382"),
                      Article("Soda", "3"),
                      Article("Dentifrice", "2"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
