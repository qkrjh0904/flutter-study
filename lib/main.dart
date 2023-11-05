import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('위젯을 상하좌우로 배치하기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
      ],
    ),);
  }
}
