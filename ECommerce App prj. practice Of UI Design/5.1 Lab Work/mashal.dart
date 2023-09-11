// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF795548),
          title: Text(
            "Mashal",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\t\t\u{1F525}\n",
                    style: TextStyle(fontSize: 35),
                  ),
                  WidgetSpan(
                    child: Container(
                      height: 130,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFF775248),
                        border: Border(
                          top: BorderSide(
                            width: 15,
                            color: Color(0xFF87665b),
                          ),
                          bottom: BorderSide(
                            width: 15,
                            color: Color(0xFF87665b),
                          ),
                          left: BorderSide(
                            width: 15,
                            color: Color(0xFFf4f2f1),
                          ),
                          right: BorderSide(
                            width: 15,
                            color: Color(0xFFf4f2f1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
