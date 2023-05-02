import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: false,
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1)),
            child: Text("Hello World"),
          ),
        ),
      ),
    );
  }
}
