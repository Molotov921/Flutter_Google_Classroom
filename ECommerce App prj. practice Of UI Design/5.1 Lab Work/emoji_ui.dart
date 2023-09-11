// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Center(
            child: Text(
              "Emoji",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          height: 60,
          color: Colors.orange,
        ),
        body: Align(
          alignment: Alignment(0, 0),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.orange, width: 35),
            ),
            child: Align(
              alignment: Alignment(0, -3),
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: Alignment(-0.7, -0.6),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: Alignment(2200, 0),
                      child: Container(
                        height: 69.9,
                        width: 69.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
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
