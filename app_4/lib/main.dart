import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

void userTapped() {
  print("User Tapped");
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
              child: Center(
                child: Text("Tap Me", 
                style: TextStyle(fontSize: 28),),),
            ),
          ),
        ),
      ),
    );
  }
}