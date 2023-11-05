import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print('home button pressed');
                }),
            Icon(Icons.search),
          ],
        ),
        body: TestWidget(),
      ),
    ),
  );
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
            child: Text('이거슨 센터 임니카?', style: TextStyle(fontSize: 30))));
  }
}
