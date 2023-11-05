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
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                child: Text('Container1'),
              ),
              Container(
                color: Colors.green,
                child: Text('Container1'),
              ),
              Container(
                color: Colors.blue,
                child: Text('Container1'),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: Text('Container1'),
          ),
        ],
      ),
    );
  }
}
