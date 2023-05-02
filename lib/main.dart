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
          body: Text("This is My App"),
          bottomNavigationBar: BottomAppBar(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: 30),
                Icon(Icons.phone, size: 30),
                Icon(Icons.message, size: 30),
              ],
            ),
          )),
    );
  }
}
