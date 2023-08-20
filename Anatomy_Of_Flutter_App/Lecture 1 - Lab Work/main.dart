import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 150, top: 101),
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 50,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                        decorationStyle: TextDecorationStyle.double,
                        decorationThickness: 0.4,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 150, top: 200),
                    child: Text(
                      "Dart",
                      style: TextStyle(
                        fontSize: 50,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                        decorationStyle: TextDecorationStyle.double,
                        decorationThickness: 0.4,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 150, top: 201),
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 50,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                        decorationStyle: TextDecorationStyle.double,
                        decorationThickness: 0.4,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
