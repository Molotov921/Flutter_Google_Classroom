import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Red & White",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 80),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 1
                          TextSpan(
                            text: "G",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                            text: "R",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "APHICS\n",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 69),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 2
                          TextSpan(
                            text: "FLUTT",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.lightBlue,
                            ),
                          ),
                          TextSpan(
                            text: "E",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "R\n",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 3
                          TextSpan(
                            text: "AN",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                            text: "D",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "ROID\n",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 4
                          TextSpan(
                            text: "DESIGN",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.yellow,
                            ),
                          ),
                          TextSpan(
                            text: " & ",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "DEVELOP\n",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 5
                          TextSpan(
                            text: "W",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "EB\n",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 27),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 6
                          TextSpan(
                            text: "FAS",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.limeAccent,
                            ),
                          ),
                          TextSpan(
                            text: "H",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "ION\n",
                            style: TextStyle(
                              color: Colors.limeAccent,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 90),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 7
                          TextSpan(
                            text: "ANIMAT",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.cyanAccent,
                            ),
                          ),
                          TextSpan(
                            text: "I",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "ON\n",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 27),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 8
                          TextSpan(
                            text: "I",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.lightBlue,
                            ),
                          ),
                          TextSpan(
                            text: "T",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: "A-CS+\n",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 90),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // 9
                          TextSpan(
                            text: "GAM",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.yellow,
                            ),
                          ),
                          TextSpan(
                            text: "E",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                        ],
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
