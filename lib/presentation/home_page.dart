import 'package:flutter/material.dart';
import 'package:simple_quick/presentation/components/sign_in_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        title: const Center(
          child: Text('Sign In'),
        ),
      ),
      body: const SignInForm(),
    );
  }
}
