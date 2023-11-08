// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF009688),
          title: Text(
            "A Shadow Button",
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            alignment: Alignment.center,
            height: 80,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFF009688),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF009688),
                  spreadRadius: 4,
                  blurRadius: 20,
                ),
              ],
            ),
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
