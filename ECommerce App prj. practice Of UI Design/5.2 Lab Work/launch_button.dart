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
            "Launch Button",
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF4caf50),
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF1AB01E),
                  blurRadius: 20,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Text(
              "GO",
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
