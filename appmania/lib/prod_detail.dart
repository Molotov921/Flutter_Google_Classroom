// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:appmania/prod_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  String? img;
  String? name;
  num? rateing;
  dynamic description;

  Cartpage({
    super.key,
    this.img,
    this.name,
    this.rateing,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0xFF5ed240),
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_sharp,
              size: 30,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Center(
                child: Icon(CupertinoIcons.suit_heart),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff5ECE42), Colors.white],
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 170),
                        child: Container(
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(60),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color(0xFF5ed240),
                                blurRadius: 80,
                                spreadRadius: 3)
                          ], shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 200,
                            backgroundImage: AssetImage("$img"),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF5ed240),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Spacer(),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "$name\n",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              TextSpan(
                                text: "$description",
                                style: TextStyle(color: Colors.black38),
                              ),
                              TextSpan(
                                text: " Read more",
                                style: TextStyle(
                                  color: Color(0xFF5ed240),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 30,
                            ),
                            Text("$rateing", style: TextStyle(fontSize: 17)),
                            Spacer(),
                            Text("\u{1F525} 100 Kcal",
                                style: TextStyle(fontSize: 17)),
                            Spacer(),
                            Text(
                              "\u{23F0} 5-10 Min",
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black12),
                              margin: EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  "\u{1FAD2}",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black12),
                              margin: EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  "\u{1F345}",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black12),
                              margin: EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  "\u{1F34B}",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black12),
                              margin: EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  "\u{1F33D}",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black12),
                              margin: EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  "\u{1F952}",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Cart_Design(
                                    name: name,
                                    img: img,
                                    rating: rateing,
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 80,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Color(0xFF5ed240),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment(0, 0),
                            child: Text("Add To Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
