// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, non_constant_identifier_names, unnecessary_import, must_be_immutable

import 'package:appmania/prod_detail.dart';
import 'package:appmania/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            size: 30,
                          ),
                          Text(
                            "Habiganj City",
                            style: TextStyle(fontSize: 15),
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                shape: BoxShape.circle),
                            margin: EdgeInsets.all(10),
                            child: Icon(
                              Icons.sort,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Find The ",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: "Best\nFood",
                            style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                          TextSpan(
                            text: " Around You",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFe7e7eb),
                          borderRadius: BorderRadius.circular(25)),
                      margin: EdgeInsets.all(20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.search),
                            Text(
                              "   search your favourit food",
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Icon(CupertinoIcons.slider_horizontal_3)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Find  ",
                              style: TextStyle(fontSize: 35),
                            ),
                            TextSpan(
                              text: "5km",
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFFf67f4e),
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                  color: Color(0xFFf67f4e), fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Color(0xFF5ed240),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text(
                              "Scalads",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFe7e7eb),
                              ),
                            ),
                            alignment: Alignment(0, 0),
                            margin: EdgeInsets.all(8),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Color(0xFFe7e7eb),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text("Hot sale",
                                style: TextStyle(fontSize: 20)),
                            alignment: Alignment(0, 0),
                            margin: EdgeInsets.all(8),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Color(0xFFe7e7eb),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text(
                              "Popularity",
                              style: TextStyle(fontSize: 20),
                            ),
                            alignment: Alignment(0, 0),
                            margin: EdgeInsets.all(8),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: Prod_List.map((e) {
                          String? saladName = e["salad_name"];
                          String? Limage = e["image"];
                          num? price = e["price"];
                          String? Bil_time = e["bilad_time"];
                          num? Reting = e["reting"];
                          dynamic desc = e["description"];
                          return Foods(
                            name: saladName,
                            price: price,
                            img: Limage,
                            time: Bil_time,
                            ret: Reting,
                            des: desc,
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Foods extends StatefulWidget {
  String? name;
  num? price;
  String? img;
  String? time;
  num? ret;
  dynamic des;

  // image? img;
  Foods(
      {super.key,
        this.price,
        this.name,
        this.img,
        this.time,
        this.ret,
        this.des});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(
        builder: (context) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Cartpage(
                      img: widget.img,
                      name: widget.name,
                      rateing: widget.ret,
                      description: widget.des,
                    );
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFe7e7eb),
                ),
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage(widget.img ?? "")),
                      Spacer(),
                      Text(
                        "${widget.name}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 45, bottom: 10, right: 35),
                        child: Row(
                          children: [
                            Text(
                              "${widget.time}",
                              style:
                              TextStyle(color: Colors.black, fontSize: 19),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.orangeAccent,
                              size: 30,
                            ),
                            Text(
                              "${widget.ret}",
                              style:
                              TextStyle(color: Colors.black, fontSize: 19),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          Text(
                            "\$ ${widget.price}",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF5ed240),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color(0xFFffffff),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
