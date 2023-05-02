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
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => print("검색"),
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => print("홈"),
            ),
          ],
        ),
        // body: TextButton(
        //   child: Text("하이"),
        //   onPressed: () => print("하이"),
        // ),
        body: ElevatedButton(
          onPressed: () => print("하이"),
          style: ButtonStyle(
              alignment: Alignment.bottomCenter,
              backgroundColor: MaterialStateProperty.all(Colors.red)),
          child: Text("하이"),
        ),
        // body: IconButton(
        //   icon: Icon(Icons.home),
        //   onPressed: () => print("하이"),
        // ),
      ),
    );
  }
}
