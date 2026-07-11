import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("2nd Page", 
          style: TextStyle(
            color: Colors.white, 
            fontSize: 28,
            ),),
        ),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/firstpage');
        }, child: Text("Go to first page")),
      ),
    );
  }
}