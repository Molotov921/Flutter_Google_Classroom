import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF009688),
          title: const Text(
            "\u{1F6CD} List of Fruits",
          ),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, top: 70),
                child: Row(
                  children: [
                    Text(
                      '\u{1F34E}', // Apple Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Apple',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F347}', // Grapes Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Grapes',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F352}', // Cherry Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Cherry',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F353}', // Strawberry Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Strawberry',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F96D}', // Mango Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Mango',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F34D}', // Pineapple Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Pineapple',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F34B}', // Lemon Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Lemon',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F349}', // Watermelon Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Watermelon',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Row(
                  children: [
                    Text(
                      '\u{1F965}', // Coconut Emoji
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Coconut',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
