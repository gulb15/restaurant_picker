import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    "Dominos",
    "Starbucks",
    "mcDonalds",
    "Pizza Hut",
    "Haldirams",
    "Burger King"
  ];

  var currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What do you want to eat?"),
            if (currentIndex != null)
              Text(
                restaurants[currentIndex],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  updateIndex();
                },
                child: Text("Pick restaurant"))
          ],
        )),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
