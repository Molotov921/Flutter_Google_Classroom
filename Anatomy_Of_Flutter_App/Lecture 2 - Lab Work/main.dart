import 'package:flutter/material.dart';

void main() {
  String ln =
      "Red & White Group of Institutes \n One Step in Changing Education Chain...";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text(
            "Flutter App",
          ),
          centerTitle: true,
          leading: const Center(
            child: Icon(Icons.menu),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 300,
          ),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "\t\t\t\t\t$ln",
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
