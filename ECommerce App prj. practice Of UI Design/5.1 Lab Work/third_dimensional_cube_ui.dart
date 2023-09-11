// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF009688),
          title: Text(
            "3D Cube",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          child: Center(
            child: Container(
              height: 290,
              width: 290,
              decoration: BoxDecoration(
                color: Color(0xFF009688),
                border: Border(
                  top: BorderSide(
                    width: 40,
                    color: Color(0xFF4db6ac),
                  ),
                  bottom: BorderSide(
                    width: 40,
                    color: Color(0xFF4db6ac),
                  ),
                  left: BorderSide(
                    width: 55,
                    color: Color(0xFF33aba0),
                  ),
                  right: BorderSide(
                    width: 55,
                    color: Color(0xFF33aba0),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
