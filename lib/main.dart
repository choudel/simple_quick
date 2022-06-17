import 'package:flutter/material.dart';

import 'package:simple_quick/presentation/home_page.dart';

import 'objectbox.g.dart';

Future<void> main() async {
  final store = openStore();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The best APP that ever existed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(
          secondary: Colors.blueGrey,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
