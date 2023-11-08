// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls, avoid_types_as_parameter_names, must_be_immutable
import 'package:dynamic_list/util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF244d61),
        title: Text("Dynamic List"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: list.map((num) {
              Color color1 = Color(0xFF75e2ff);
              Color color2 = Color(0xFF5689c0);
              // if(num%2==0) {return TextBar(num: num,color: color2);}
              // else{return TextBar(num: num,color: color1);}
              return TextBar(
                  num: num, color: ((num % 2 == 0) ? color2 : color1));
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              onPressed: () {
                int count = 0;
                list.forEach((element) {
                  count++;
                });
                list.add(count + 1);
                setState(() {});
              },
              backgroundColor: Color(0xFF244d61),
              child: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              onPressed: () {
                int count = 0;
                list.forEach((element) {
                  count++;
                });
                list.remove(count);
                setState(() {});
              },
              backgroundColor: Color(0xFF244d61),
              child: Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}

class TextBar extends StatelessWidget {
  int? num;
  Color? color;

  TextBar({super.key, this.num, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      height: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Text(
        "$num",
        style: TextStyle(fontSize: 30, color: Color(0xFFffffff)),
      ),
    );
  }
}
