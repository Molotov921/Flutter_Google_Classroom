// ignore_for_file: unnecessary_import, prefer_const_constructors, sized_box_for_whitespace
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
      backgroundColor: Color(0xFFfafafa),
      appBar: AppBar(
        title: Text(
          "THE WALL",
          style: TextStyle(
              color: Color(0xFFfafafa), fontSize: 25, fontWeight: FontWeight.bold,letterSpacing: 2),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF212121),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                      color: Color(0xFF5d4037),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5d4037),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
