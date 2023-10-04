// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:appmania/main.dart';
import 'package:appmania/prod_detail.dart';
import 'package:flutter/material.dart';

class Cart_Design extends StatefulWidget {
  String? name;
  String? category;
  num? price;
  String? img;
  int? min;
  num? rating;

  Cart_Design(
      {super.key,
        this.img,
        this.name,
        this.price,
        this.category,
        this.min,
        this.rating});

  @override
  State<Cart_Design> createState() => _Cart_DesignState();
}

class _Cart_DesignState extends State<Cart_Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5ed240),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Cartpage();
                },
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFFffffff),
          ),
        ),
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 25, color: Color(0xFFffffff)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ),
              );
            },
            icon: Icon(Icons.close),
            color: Color(0xFFffffff),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment(0, 1),
        height: double.infinity,
        width: double.infinity,
        child: Container(
          height: 700,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(35),
            ),
            color: Color(0xFFe7e7eb),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CartPro(),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.only(left: 7),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.black12,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.discount,
                            color: Colors.black38,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Promo Code",
                            style:
                            TextStyle(fontSize: 20, color: Colors.black38),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment(0, 0),
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Color(0xFF5ed240),
                            ),
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFFffffff)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color(0xFFe7e7eb),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "SubTotal",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Text(
                                "\$70.00",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 2,
                          color: Colors.black12,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Delivery",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Text(
                                "\$3.50",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 2,
                          color: Colors.black12,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "\$73.50",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment(0, 0),
                            height: 65,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Text(
                              "CHECKOUT",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
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
    );
  }
}

class CartPro extends StatefulWidget {
  num? per_pro_price = 12;
  int n = 1;
  String? img;
  num? price;
  String? name;

  CartPro({super.key, this.img, this.name, this.price});

  @override
  State<CartPro> createState() => _CartProState();
}

class _CartProState extends State<CartPro> {
  num? per_pro_total;

  void addNumber() {
    setState(() {
      if (9 > widget.n) {
        widget.n++;
        setState(() {
          per_pro_total = widget.per_pro_price ?? 1 * widget.n;
        });
      }
      // numberList.add(lastNumber + 1);
    });
  }

  void minNumber() {
    setState(() {
      if (widget.n > 1) {
        widget.n--;
        per_pro_total = widget.per_pro_price ?? 1 * widget.n;
      }
      // numberList.add(lastNumber + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.only(left: 7),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.black12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 100,
                            spreadRadius: -1,
                            blurStyle: BlurStyle.inner),
                      ],
                    ),
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/s_avoc.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Avocada Salad",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$${widget.per_pro_price}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () => minNumber(),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.black,
                                ),
                                child: Icon(
                                  (widget.n > 1)
                                      ? Icons.remove
                                      : Icons.block_flipped,
                                  color: Color(0xFFffffff),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "${widget.n}",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => addNumber(),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black,
                                ),
                                child: Icon(
                                  (9 > widget.n)
                                      ? Icons.add
                                      : Icons.block_flipped,
                                  color: Color(0xFFffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$$per_pro_total",
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
