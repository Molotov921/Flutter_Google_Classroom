// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4caf50),
          title: Text(
            "Letter Cover",
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
                color: Color(0xFF4caf50),
                border: Border(
                  top: BorderSide(
                    width: 128,
                    color: Color(0xFF72c075),
                  ),
                  bottom: BorderSide(
                    width: 128,
                    color: Color(0xFF72c075),
                  ),
                  left: BorderSide(
                    width: 125,
                    color: Color(0xFF4caf50),
                  ),
                  right: BorderSide(
                    width: 125,
                    color: Color(0xFF4caf50),
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
