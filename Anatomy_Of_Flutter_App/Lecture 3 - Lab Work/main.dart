import 'package:flutter/material.dart';

void main() {
  String rnw = "Red & White";
  String m = "Multimedia Education";
  String ss = "Shaping \"skills\" for \"scaling\" higher...!!!";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text(
            "My RNW",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 250,
          ),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    text: rnw,
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 55,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    m,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  ss,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 15,
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
