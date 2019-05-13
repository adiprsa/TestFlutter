import 'package:flutter/material.dart';
import 'screen/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Flutter'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}