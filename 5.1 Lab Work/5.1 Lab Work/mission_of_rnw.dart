// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  String rn = "-RNW";
  String s = "skills";
  String sc = "scaling";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Mission of RNW",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 340,
            decoration: BoxDecoration(
              color: Color(0xFFfcc8c8),
              border: Border(
                left: BorderSide(
                  color: Color(0xFFff5252),
                  width: 10,
                ),
              ),
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Shaping "$s" for "$sc" higher\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: rn,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
