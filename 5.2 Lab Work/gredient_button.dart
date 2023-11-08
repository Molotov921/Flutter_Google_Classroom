// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF48416a),
          title: Text(
            "Gradient Button",
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF9b2ab1),
                  Color(0xFF2691f2),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF48416a),
                  blurRadius: 5,
                  spreadRadius: 0.5,
                  offset: Offset(7, 7),
                ),
              ],
            ),
            child: Text(
              "Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF48416a),
      ),
    ),
  );
}
