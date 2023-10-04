// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable
import 'package:e_commerce_proj/cart_page.dart';
import 'package:e_commerce_proj/util.dart';
import 'package:e_commerce_proj/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "detailPage": (context) => ProductDetail(),
        "CartPage": (context) => CartPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  Color color = Colors.red;
  IconData icon = Icons.add;
  int? selectCat;
  RangeValues rangeVal = RangeValues(0, 0);
  List<Map> filterList = catList.map((e) => e).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Size size = MediaQuery.of(context).size;
          Orientation orientation = MediaQuery.of(context).orientation;

          print("${size.width} ${size.height}");
          print(orientation);
        },
        child: Icon(Icons.add_shopping_cart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(child: Text("SmartPhone"), value: 0),
                    DropdownMenuItem(
                      child: Text("Laptop"),
                      value: 1,
                    ),
                    // DropdownMenuItem(
                    //   child: Text("fragnces"),
                    //   value: 3,
                    // ),
                    // DropdownMenuItem(
                    //   child: Text("Skincare"),
                    //   value: 4,
                    // ),
                    // DropdownMenuItem(
                    //   child: Text("Groceries"),
                    //   value: 5,
                    // )
                  ],
                  onChanged: (value) {
                    selectCat = value;
                    filterList.clear();
                    filterList.add(catList[value ?? 0]);
                    setState(() {});
                    print(value);
                  },
                  value: selectCat,
                  hint: Text("Select Category..."),
                ),
              ),
              if (selectCat != null)
                ActionChip(
                  label: Text("Clear"),
                  avatar: Icon(Icons.close),
                  onPressed: () {
                    selectCat = null;
                    filterList = catList.map((e) => e).toList();
                    setState(() {});
                  },
                )
            ],
          ),
          // Slider(
          //   value:sliderVal,
          //   max: 100,
          //   onChanged: (value) {
          //     sliderVal=value;
          //     setState(() {
          //
          //     });
          //     print(value);
          //   },
          //   label: "${sliderVal.toInt()}",
          //   divisions: 100,
          //   activeColor: Colors.yellow,
          //   thumbColor: Colors.black,
          // ),
          if (selectCat != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text("From\n\$ ${rangeVal.start.toInt()}",
                      textAlign: TextAlign.center),
                  Expanded(
                    child: RangeSlider(
                        values: rangeVal,
                        onChanged: (value) {
                          rangeVal = value;
                          var filterItem = filterList[0];

                          setState(() {});
                          List<Map>? pList = filterItem["product_list"];
                          print(pList?.length);

                          pList?.forEach((element) {
                            num price = element["price"] ?? 0;
                            if (price >= rangeVal.start ||
                                price <= rangeVal.end) {
                              print("==> $price");
                            }
                          });
                        },
                        max: 20000),
                  ),
                  Text("To\n\$ ${rangeVal.end.toInt()}",
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: filterList.map((e) {
                  String catName = e["cat_name"];
                  List<Map> pList = e["product_list"];

                  return Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          catName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: pList.map((products) {
                              String? name = products["name"];
                              int? price = products["price"];
                              String? img = products["image"];
                              num? rating = products["rating"];

                              return ProductWidget(
                                name: name,
                                price: price,
                                img: img,
                                rating: rating,
                                category: catName,
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  String? name;
  String? category;
  int? price;
  String? img;
  num? rating;

  ProductWidget(
      {super.key, this.name, this.price, this.img, this.rating, this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tap $name");
        // Going to new Screen using Navigator.push
        // Navigator.push(context, MaterialPageRoute(
        //   builder: (context) {
        //     return ProductDetail(name: name,rating: rating,img: img,price: price,cat: category,);
        //   },
        // ));
        Map map = {
          "name": name,
          "img": img,
          "cat": category,
          "price": price,
          "rating": rating,
        };
        Navigator.pushNamed(context, "detailPage", arguments: map);
      },
      child: Container(
        height: 300,
        width: 180,
        margin: EdgeInsets.all(10),
        // padding: EdgeInsets.all(10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.network(
                    img ?? "",
                    width: double.infinity,
                    // height: 50,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    child: Text(
                      "12.96%",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10))),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name ?? ""),
                    Text("\$ $price"),
                    // RatingBar.builder(
                    //   initialRating: 3,
                    //   minRating: 2,
                    //   direction: Axis.horizontal,
                    //   allowHalfRating: true,
                    //   itemCount: 3,
                    //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    //   itemBuilder: (context, _) => Icon(
                    //     Icons.heart_broken,
                    //     color: Colors.amber,
                    //   ),
                    //   onRatingUpdate: (rating) {
                    //     print(rating);
                    //   },
                    // ),
                    RatingBarIndicator(
                      rating: rating?.toDouble() ?? 0,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 22.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*
Slider(
     value:sliderVal,
     max: 100,
     onChanged: (value) {
       sliderVal=value;
       setState(() {

       });
       print(value);
     },
     label: "${sliderVal.toInt()}",
     divisions: 100,
     activeColor: Colors.yellow,
     thumbColor: Colors.black,
),

*/

/*
[
  {},
  {},
  {}
]

list s =[];

*/
