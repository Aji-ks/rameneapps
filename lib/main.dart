import 'package:flutter/material.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/login.dart';
import 'package:rameneapps/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  Start1(),
    );
  }
}