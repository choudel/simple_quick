import 'package:flutter/material.dart';

class CounterComponent extends StatefulWidget {
  const CounterComponent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CounterComponent();
}

class _CounterComponent extends State<CounterComponent> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 500.0,
          height: 700.0,
          child: ListView(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Text(
                  'You have pushed the button this many times:',
                ),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(
                  child: Text('$_counter'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
