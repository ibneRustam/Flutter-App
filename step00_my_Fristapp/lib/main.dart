import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "My Frist App",
              style: TextStyle(color: Colors.teal, fontSize: 30),
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: 90,
            color: Colors.teal,
            child: Text(
              "بسم الله الرحمن الرحيم ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "ruqafont",
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
