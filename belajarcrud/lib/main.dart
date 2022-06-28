import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//learn to increment number
int nilai = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment Decrement"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                onPressed: () {
                  setState(() {
                    nilai--;
                  });
                }, 
                child: Icon(Icons.remove)
                ),
                
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    nilai++;
                  });
                }, 
                child: Icon(Icons.add)
                )  
                ],
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
