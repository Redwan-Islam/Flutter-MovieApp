import 'package:flutter/material.dart';
import 'package:movie/startarscreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.red.shade900,
      ),
      debugShowCheckedModeBanner: false,
      home: const StartarScreen(),
    );
  }
}
