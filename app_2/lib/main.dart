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
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 49, 49, 49),
          title:Text("New App", 
            style:TextStyle(
              color: const Color.fromARGB(255, 206, 206, 206),
              fontWeight: FontWeight.bold
            )
          ),
          centerTitle: true,
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            IconButton(onPressed:() {}, 
            icon: Icon(Icons.logout, color: Colors.white,))
          ],
        ),
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          // crossAxisAlignment: CrossAxisAlignment.center,//no effect, idk why?
          children: [
            Container(
              width: 225,
              height:500,
              color: Colors.blueGrey,
            ),
            Container(
              width: 150,
              height: 350,
              color: const Color.fromARGB(255, 89, 110, 120),
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 300,
                color: const Color.fromARGB(255, 72, 89, 97),
              ),
            )
          ],
        ),
      ),
    );
  }
}