// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:icons_ui/util.dart';

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
        backgroundColor: Color(0xFFffffff),
        title: Text(
          "Icons",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: icons.map((iconlist) {
            List iconlist2 = iconlist;
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: iconlist2.map((element) {
                  return IconBox(element: element);
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  IconData? element;

  IconBox({super.key, this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFf4f4f4),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 5),
              blurRadius: 5,
              spreadRadius: 3),
        ],
      ),
      child: Icon(
        element,
        size: 50,
        color: Color(0xFF616161),
      ),
    );
  }
}
