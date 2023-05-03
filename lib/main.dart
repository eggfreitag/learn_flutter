import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var sizedBox = SizedBox(
  child: Text("안녕"),
);
// 변수에 할당하여 사용
// 성능상 issue 야기할 가능성 있다 (? 변화하는 값을 포함할 경우)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Text("안녕"),
          ],
        ),
        // body: sizedBox,
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  // 커스텀 위젯은 class로 생성된다
  // StatelessWidget클래스에서 상속받아 사용한다
  const ShopItem({super.key});
  // parameter정의

  @override
  // class에서 상속받은 변수, 함수의 중복을 재 정의한다
  // 예를들어 아래의 build 함수를 StatelessWidget의 build함수가 아닌
  // 아래에 정의한 build 함수로 사용하라는 의미
  Widget build(BuildContext context) {
    // Widget, BuildContext는 type을 지정
    // 결국은 build(context)라는 함수이다
    return SizedBox(
      child: Text("안녕"),
    );
    // return안에 레이아웃을 정의한다
  }
}
