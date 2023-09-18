// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "B  O  L  T",
          style: TextStyle(
              color: Color(0xFFffffff),
              fontSize: 35,
              fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF212121),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFffc107),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 80,
            decoration: BoxDecoration(
              color: Color(0xFF212121),
            ),
            child: Text(
              "\u{26A1}",
              style: TextStyle(fontSize: 60),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFffc107),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
