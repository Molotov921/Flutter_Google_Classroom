// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, must_be_immutable
import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShow = false;

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
        backgroundColor: Color(0xFF2196f3),
        title: Text(
          "Map",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu_outlined),
      ),
      body: Container(
        color: Color(0xFFeeeeee),
        child: Column(
          children: IconList.map((e) {
            String Name = e["name"] as String;
            IconData? li = e["icon"];
            return ListIcon(
              name: Name,
              icon_name: e["icon"],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ListIcon extends StatelessWidget {
  String? name;
  IconData? icon_name;

  ListIcon({super.key, this.name, this.icon_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFfefefe),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFeeeeee),
                blurStyle: BlurStyle.outer,
                spreadRadius: 1,
                blurRadius: 3),
          ],
        ),
        height: 90,
        width: double.infinity,
        // color: Color(0xffffffff),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "$name",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                icon_name,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
