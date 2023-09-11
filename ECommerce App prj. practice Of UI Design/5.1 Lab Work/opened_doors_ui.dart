// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF191919),
          title: Text(
            "Opened Doors",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 260,
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xFF000000),
              border: Border(
                left: BorderSide(
                  width: 75,
                  color: Color(0xFFeeeeee),
                ),
                right: BorderSide(
                  width: 75,
                  color: Color(0xFFeeeeee),
                ),
                top: BorderSide(
                  width: 40,
                  color: Color(0xFF000000),
                ),
                bottom: BorderSide(
                  width: 40,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
