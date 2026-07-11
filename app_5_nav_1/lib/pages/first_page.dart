import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("1st Page", style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),),
        ),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/secondpage');
        }, child: Text("Go to second Page")),
      ),
    );
  }
}