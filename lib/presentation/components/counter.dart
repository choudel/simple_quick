import 'package:flutter/material.dart';

class CounterComponent extends StatelessWidget {
  const CounterComponent({Key? key}) : super(key: key);

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
                child: const Center(
                  child: Text(
                    'This App is a live Robbery Simulator with concrete consquences',
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(
                  child: Text(
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                      'GIVE SOMETHING'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
