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
            "Watch",
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF48416a),
                Color(0xFF2195f2),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Align(
            alignment: Alignment(0, 0),
            child: Container(
              alignment: Alignment.center,
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xFF4D77AB),
                border: Border.all(
                  color: Color(0xFF7ba1c4),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF423C62),
                    blurRadius: 5,
                    spreadRadius: 0.3,
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
        ),
      ),
    ),
  );
}
