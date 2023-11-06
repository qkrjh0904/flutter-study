import 'package:flutter/material.dart';
import 'package:flutter_study/red_box.dart';
import 'package:shake/shake.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;
  late ShakeDetector detector;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          _counter++;
        });
      },
      shakeThresholdGravity: 1.5,
    );
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.resumed:
        detector.startListening();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.paused:
        detector.stopListening();
        break;
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const RedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const RedBox().box.padding(EdgeInsets.all(30)).color(Colors.blue).make(),
                    '흔들어서 카운트를 올려보세요.'
                        .text
                        .size(10)
                        .bold
                        .black
                        .isIntrinsic
                        .makeCentered()
                        .box
                        .withRounded(value: 50)
                        .color(Colors.green)
                        .height(150)
                        .make()
                        .pSymmetric(h: 20, v: 50),
                    const RedBox(),
                  ],
                ),
              ],
            ),
            const RedBox(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
