import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF7cb342),
        appBar: AppBar(
          backgroundColor: const Color(0xFF8bc34a),
          title: const Text(
            "My App",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 320,
            width: 320,
            decoration: BoxDecoration(
              color: const Color(0xFFb2ff59),
              border: Border.all(
                color: const Color(0xFF4caf50),
                width: 25,
              ),
            ),
            child: const Center(
              child: Text(
                "OOOO",
                style: TextStyle(
                  letterSpacing: -52,
                  color: Color(0xab364b16),
                  fontSize: 150,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
