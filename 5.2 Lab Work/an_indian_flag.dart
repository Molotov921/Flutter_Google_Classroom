// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2195f2),
        appBar: AppBar(
          title: Text("An Indian Flag"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            height: 150,
            width: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFff5722),
                  Color(0xFFf4f8f4),
                  Color(0xFF388e3c),
                ],
                stops: [0.2, 0.5, 0.8],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: Text(
              "\u{2734}",
              style: TextStyle(
                fontSize: 60,
                color: Color(0xFF00008b),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
