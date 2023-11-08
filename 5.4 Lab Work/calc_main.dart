// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
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
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF54759e),
        title: Text("Calc"),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$count",
            style: TextStyle(color: Color(0xFF9e9e9e), fontSize: 80),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      count = count - 2;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF54759e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "-2",
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      count = count + 2;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF54759e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "+2",
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      count = count - 4;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF54759e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "-4",
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      count = count + 4;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF54759e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "+4",
                        style:
                            TextStyle(color: Color(0xFFffffff), fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    count = 0;
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFF54759e),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Clear",
                      style: TextStyle(color: Color(0xFFffffff), fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
