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
      backgroundColor: Color(0xFF212121),
      appBar: AppBar(
        title: Text(
          "SPLITTER",
          style: TextStyle(
              color: Color(0xFFfafafa),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF202020),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFff9800),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFffc107),
                      ),
                      child: Text("1"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFffc107),
                      ),
                      child: Text("2"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFffc107),
                      ),
                      child: Text("3"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFffc107),
                      ),
                      child: Text("4"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFffc107),
                      ),
                      child: Text("5"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFff5722),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("4"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("5"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("6"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("7"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("8"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("9"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF9e9e9e),
                      ),
                      child: Text("10"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
