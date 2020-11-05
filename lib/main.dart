import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color bgColor;
  Color color;

  @override
  void initState() {
    super.initState();

    bgColor = Colors.transparent;
    color = Colors.transparent;
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });     
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: color,
                ),
                padding: EdgeInsets.all(64.0),
                child: Text(
                  'Hey there',
                  style: TextStyle(fontSize: 32)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
