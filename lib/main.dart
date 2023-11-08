// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> names = [""];
  String newName = "";

  void sortAscending() {
    setState(() {
      names.sort();
    });
  }

  void sortDescending() {
    setState(() {
      names.sort((a, b) => b.compareTo(a));
    });
  }

  void addName() {
    setState(() {
      if (newName.isNotEmpty) {
        names.add(newName);
        newName = "";
      }
    });
  }

  void removeName(String name) {
    setState(() {
      names.remove(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter List'),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        newName = value;
                      },
                      decoration: const InputDecoration(labelText: 'Name'),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: addName,
                child: const Text('Add'),
              ),
              ElevatedButton(
                onPressed: sortAscending,
                child: const Text('Sort Ascending'),
              ),
              ElevatedButton(
                onPressed: sortDescending,
                child: const Text('Sort Descending'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(names[index]),
                          ElevatedButton(
                            onPressed: () => removeName(names[index]),
                            child: const Text('Remove'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
