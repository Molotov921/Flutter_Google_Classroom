// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:icons_editor/util.dart';

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
  Color? color = Color(0xFF448aff);
  IconData? icon = Icons.chevron_left_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Icons Editor",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFfdfdfd),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          MainContainer(
            color1: color,
            icon1: icon,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFfafafa),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Select Color",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFfafafa),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: colors.map((element) {
                  return InkWell(
                    onTap: () {
                      color = element;
                      setState(() {});
                    },
                    child: ColorBox(color: element),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFfafafa),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Select Icon",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFfafafa),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: icons.map((element) {
                  return InkWell(
                    onTap: () {
                      icon = element;
                      setState(() {});
                    },
                    child: IconBox(icon: element),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorBox extends StatefulWidget {
  Color? color;

  ColorBox({super.key, this.color});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

List<Color> colors = [
  Color(0xFFe9fa40),
  Color(0xFF3f51b5),
  Color(0xFF448aff),
  Color(0xFFff00b1),
  Color(0xFF34ff00),
  Color(0xFFff9900),
  Color(0xFF2196f3),
  Color(0xFF0004ff),
  Color(0xFFff00f4)
];

class IconBox extends StatelessWidget {
  IconData? icon;

  IconBox({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}

class MainContainer extends StatefulWidget {
  Color? color1;
  IconData? icon1;

  MainContainer({super.key, this.color1, this.icon1});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFfafafa),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(2, 2))
        ],
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        widget.icon1,
        color: widget.color1,
        size: 100,
      ),
    );
  }
}
