import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Text("My App", style: TextStyle(color: Colors.white),),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 43, 68, 111),
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: Colors.white,),
            )
          ],
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 43, 68, 111),
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.all(25),
            child: Center(
              child: Text("Ashray", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold 
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
