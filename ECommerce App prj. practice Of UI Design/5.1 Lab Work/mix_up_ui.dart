// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFfc5151),
          title: Text(
            "Mix-up",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          child: Center(
            child: Container(
              height: 450,
              width: double.infinity,
              color: Color(0xFF2196f3),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 380,
                  width: 350,
                  color: Color(0xFFffff00),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      color: Color(0xFFe91e63),
                      height: 330,
                      width: 300,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 250,
                          height: 270,
                          color: Color(0xFFff9800),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 220,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFF64ffda),
                                border: Border.all(
                                  width: 22,
                                  color: Color(0xFF4caf50),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
