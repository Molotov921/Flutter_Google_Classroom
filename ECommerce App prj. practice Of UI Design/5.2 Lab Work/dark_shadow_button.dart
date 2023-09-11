// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Dark Shadow Button",
          ),
          backgroundColor: Color(0xFFff5252),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: 220,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Color(0xFFff5252),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFff5252),
                  spreadRadius: 3,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
