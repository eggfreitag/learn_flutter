import 'dart:ui';

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
          backgroundColor: Color(Colors.white.value),
          centerTitle: false,
          leading: Center(
            child: Text(
              "금호동 3가",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          leadingWidth: 100,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => print("검색"),
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => print("Menu"),
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => print("Notifications"),
              color: Colors.black,
            ),
          ],
        ),
        // body: TextButton(
        //   child: Text("하이"),
        //   onPressed: () => print("하이"),
        // ),
        // body: ElevatedButton(
        //   onPressed: () => print("하이"),
        //   style: ButtonStyle(
        //       alignment: Alignment.bottomCenter,
        //       backgroundColor: MaterialStateProperty.all(Colors.red)),
        //   child: Text("하이"),
        // ),
        // body: IconButton(
        //   icon: Icon(Icons.home),
        //   onPressed: () => print("하이"),
        // ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
            Expanded(
              child: SizedBox(
                height: 150,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("성동구 행당동 - 끌올 10분 전",
                          style: TextStyle(fontSize: 15)),
                      Text("100,000원", style: TextStyle(fontSize: 15)),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.dark_mode_outlined),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
