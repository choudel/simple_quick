// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_quick/presentation/components/counter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        title: const Center(child: Text('HELLLLO')),
      ),
      body: const Center(
        child: CounterComponent(),
      ),
    );
  }
}
